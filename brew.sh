echo "Installing xcode-stuff"
xcode-select --install

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure everything is up to date
brew update

# Install git
brew install git

git config --global user.name "Amir Omidi"
git config --global user.email "amir@aaomidi.com"

tools=(
  git
  tree
  wget
  mtr  
)


# Apps
apps=(
  dropbox
  discord
  firefox
  google-chrome
  private-internet-access
  steam
  spotify
  sublime-text
  vlc
  transmission
  jetbrains-toolbox
  visual-studio-code
  java8
  java
  qbittorrent
)

echo "Installing tools with homebrew"
brew install ${tools[@]}

echo "Installing apps with homebrew"
brew cask install ${apps[@]}