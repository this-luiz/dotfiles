if ! is-executable brew -o ! is-executable git; then
  echo "Skipped: npm (missing: brew and/or git)"
  return
fi

brew install nvm

nvm install 6

# Globally install with npm

packages=(
  npm
)

npm install -g "${packages[@]}"
