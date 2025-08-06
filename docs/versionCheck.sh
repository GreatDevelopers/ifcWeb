check_tool() {
  local tool=$1
  if ! command -v "$tool" >/dev/null 2>&1; then
    echo "Alert: $tool is not installed."
  else
    version=$("$tool" --version 2>&1 | head -n 1)
    location=$(command -v "$tool")
    echo "$tool is installed."
    echo "Version: $version"
    echo "Location: $location"
  fi
}

# Example usage:
tools=("npm" "node" "yarn" "pnpm")

# Display OS information
if [ -f /etc/os-release ]; then
  # Standard on most modern Linux distros
  . /etc/os-release
  os_name="$NAME"
  os_version="$VERSION"
elif [ "$(uname)" = "Darwin" ]; then
  os_name="macOS"
  os_version=$(sw_vers -productVersion)
else
  # Fallback for other UNIX-like systems
  os_name=$(uname -s)
  os_version=$(uname -r)
fi

echo "Operating System: $os_name"
echo "Version: $os_version"
echo "-----------------------------------"


for tool in "${tools[@]}"; do
  check_tool "$tool"
  echo "----------------------"
done
