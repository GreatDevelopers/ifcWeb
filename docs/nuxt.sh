curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$(basename $(curl -fsSLI -o /dev/null -w %{url_effective} https://github.com/nvm-sh/nvm/releases/latest))/install.sh | bash
# Load nvm into current shell (or restart terminal)
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# Add to ~/.bashrc if not already present
grep -q 'nvm.sh' ~/.bashrc || {
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
}
nvm install 20
