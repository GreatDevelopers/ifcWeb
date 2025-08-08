#!/bin/bash

# bbdsInstaller.sh
# Robust folder/project initializer with logging, version check, nvm setup, Nuxt app setup
# Usage: bash bbdsInstaller.sh <new-folder-name>

# -------- User-Editable Variables ---------
NODE_VERSION=20    # Set desired Node.js major version here

# -------- Internal Variables -----
LOGFILE=""
PARENT_DIR=""
TIMESTAMP_FMT='+%Y-%m-%d %H:%M:%S'
NVM_URL_BASE="https://raw.githubusercontent.com/nvm-sh/nvm"
NVM_SRC_LINE='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'
NVM_EXPORT_LINE='export NVM_DIR="$HOME/.nvm"'

# --------- Functions ------------

log_msg() {
  local status="$1"
  local msg="$2"
  local now
  now=$(date "$TIMESTAMP_FMT")
  # Always write log line to STDERR and the log file
  echo -e "[$now] [$status] $msg" | tee -a "$LOGFILE" >&2
}

usage() {
  echo "Usage: $0 <new-folder-name>"
  exit 1
}

check_internet() {
  if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
    log_msg "INFO" "Internet connectivity: OK"
  else
    log_msg "ERROR" "No internet connection. Please connect and try again."
    exit 2
  fi
}

check_curl() {
  if ! command -v curl >/dev/null 2>&1; then
    log_msg "ERROR" "curl is not installed. Please install curl before proceeding."
    echo -e "\nTo install curl, run ONE of the following commands depending on your OS:\n" >&2
    echo "Debian/Ubuntu: sudo apt-get update && sudo apt-get install curl" >&2
    echo "Fedora/CentOS: sudo dnf install curl" >&2
    echo "macOS: brew install curl" >&2
    exit 3
  else
    log_msg "INFO" "curl is installed: $(curl --version | head -n 1)"
  fi
}

create_folder() {
  local folder="$1"
  while [ -e "$folder" ]; do
    log_msg "WARN" "Folder '$folder' already exists."
    read -p "Please enter a new folder name: " folder
  done
  mkdir "$folder"
  if [ $? -eq 0 ]; then
    log_msg "INFO" "Created folder '$folder'."
  else
    log_msg "ERROR" "Failed to create folder '$folder'."
    exit 4
  fi
  echo "$folder"   # Only output the folder name (safe for capture)
}

version_check() {
  log_msg "INFO" "---- Running Version Check ----"
  local tools=("npm" "node" "yarn" "pnpm")
  # Detect OS
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    os_name="$NAME"
    os_version="$VERSION"
  elif [ "$(uname)" = "Darwin" ]; then
    os_name="macOS"
    os_version=$(sw_vers -productVersion)
  else
    os_name=$(uname -s)
    os_version=$(uname -r)
  fi
  log_msg "INFO" "Operating System: $os_name"
  log_msg "INFO" "Version: $os_version"

  for tool in "${tools[@]}"; do
    if ! command -v "$tool" >/dev/null 2>&1; then
      log_msg "WARN" "$tool is not installed."
    else
      version=$("$tool" --version 2>&1 | head -n 1)
      location=$(command -v "$tool")
      log_msg "INFO" "$tool is installed. Version: $version Location: $location"
    fi
  done
}

add_nvm_to_bashrc() {
  # Check for existing export and source lines containing NVM_DIR path
  grep -qF "$NVM_EXPORT_LINE" ~/.bashrc
  local export_exists=$?
  grep -qF "$NVM_SRC_LINE" ~/.bashrc
  local src_exists=$?

  if [ $export_exists -ne 0 ]; then
    echo "$NVM_EXPORT_LINE" >> ~/.bashrc
    log_msg "INFO" "Added NVM export line to ~/.bashrc"
  else
    log_msg "INFO" "NVM export line already present in ~/.bashrc"
  fi

  if [ $src_exists -ne 0 ]; then
    echo "$NVM_SRC_LINE" >> ~/.bashrc
    log_msg "INFO" "Added nvm.sh source line to ~/.bashrc"
  else
    log_msg "INFO" "nvm.sh source line already present in ~/.bashrc"
  fi
}

install_nvm() {
  # Get latest release from GitHub and construct install.sh URL
  local nvm_latest_url
  nvm_latest_url=$(curl -fsSLI -o /dev/null -w %{url_effective} https://github.com/nvm-sh/nvm/releases/latest)
  local nvm_version
  nvm_version=$(basename "$nvm_latest_url")
  log_msg "INFO" "Latest NVM version: $nvm_version"

  local nvm_install_url="$NVM_URL_BASE/$nvm_version/install.sh"
  log_msg "INFO" "Downloading and executing NVM install script from $nvm_install_url"

  # Run install script (log all output)
  if curl -o- "$nvm_install_url" | bash 2>&1 | tee -a "$LOGFILE"; then
    log_msg "INFO" "NVM install script executed successfully."
  else
    log_msg "ERROR" "NVM installation failed."
    exit 5
  fi

  # Load nvm into this session
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  add_nvm_to_bashrc
}

install_node() {
  log_msg "INFO" "Installing Node.js v$NODE_VERSION via nvm..."
  if nvm install "$NODE_VERSION" 2>&1 | tee -a "$LOGFILE"; then
    log_msg "INFO" "Node v$NODE_VERSION installed successfully."
  else
    log_msg "ERROR" "Node installation failed."
    exit 6
  fi
}

nuxt_setup() {
  log_msg "INFO" "Running npm create for nuxt@latest with project bb-ds"
  if npm create nuxt@latest bb-ds 2>&1 | tee -a "$LOGFILE"; then
    log_msg "INFO" "Nuxt project bb-ds created successfully."
  else
    log_msg "ERROR" "Failed to create Nuxt project bb-ds."
    exit 8
  fi

  cd bb-ds || { log_msg "ERROR" "Failed to cd into bb-ds"; exit 9; }

  log_msg "INFO" "Running npm install for required packages"
  if npm install @thatopen/components @thatopen/components-front @thatopen/fragments @thatopen/ui @thatopen/ui-obc 2>&1 | tee -a "$LOGFILE"; then
    log_msg "INFO" "NPM packages installed successfully."
  else
    log_msg "ERROR" "Failed to install NPM packages."
    exit 10
  fi

  log_msg "INFO" "Creating folders pages and components"
  mkdir -p pages components

  cd pages || { log_msg "ERROR" "Failed to cd into pages folder"; exit 11; }

  # Download Nuxt page files using curl (not wget)
  urls=(
    "https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/index.vue"
    "https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/indexRai.vue"
  )
  for url in "${urls[@]}"; do
    file_name=$(basename "$url")
    log_msg "INFO" "Downloading $file_name from $url"
    if curl -fsSL "$url" -o "$file_name" 2>&1 | tee -a "$LOGFILE"; then
      log_msg "INFO" "$file_name downloaded successfully."
    else
      log_msg "ERROR" "Failed to download $file_name"
      exit 12
    fi
  done

  cd ../components || { log_msg "ERROR" "Failed to cd into components folder"; exit 13; }

  url_component="https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue"
  file_component="WorldExample.vue"
  log_msg "INFO" "Downloading $file_component from $url_component"
  if curl -fsSL "$url_component" -o "$file_component" 2>&1 | tee -a "$LOGFILE"; then
    log_msg "INFO" "$file_component downloaded successfully."
  else
    log_msg "ERROR" "Failed to download $file_component"
    exit 14
  fi

  cd ..

  log_msg "INFO" "Moving app/app.vue files to parent directory"
  mv app/app.vue* ../ 2>&1 | tee -a "$LOGFILE"

  log_msg "INFO" "Starting npm development server with host enabled"
  npm run dev -- --host 2>&1 | tee -a "$LOGFILE"
}

# --------- MAIN SCRIPT ----------

if [ $# -ne 1 ]; then
  usage
fi

FOLDER_NAME="$1"
PARENT_DIR="$(pwd)"
LOGFILE="$PARENT_DIR/bbdsInstaller_$(date +%Y%m%d_%H%M%S).log"

log_msg "INFO" "Starting bbdsInstaller.sh for folder '$FOLDER_NAME'"
log_msg "INFO" "Log file: $LOGFILE"

check_internet
check_curl

F1=$(create_folder "$FOLDER_NAME")
cd "$F1" || { log_msg "ERROR" "Failed to cd into $F1"; exit 7; }
log_msg "INFO" "Changed to project directory: $F1"

version_check
install_nvm
install_node
nuxt_setup

log_msg "INFO" "bbdsInstaller.sh completed successfully."
echo -e "\nAll steps complete! See the log file at $LOGFILE for details."
