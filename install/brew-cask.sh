if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/cask
brew cask install caskroom/cask/brew-cask

# Install packages
brew cask install 
apps=(
  firefox
  google-chrome
  google-drive
  jenv
  pyenv
  python
  slack
  ripgrep
  visual-studio-code
  vlc
  wget
  zsh
  zsh-completions
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
