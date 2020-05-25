#Downloading and Installing Homebrew Suite
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#Downloading and installing necessary desktop apps
brew cask install visual-studio-code google-chrome postman docker xquartz processing

#Downloading and installing necessary programs
brew install node wget git cmake ninja

#Fetch .gitconfig and vimrc
pushd ~/
wget https://raw.githubusercontent.com/farzonl/gitconfig/master/.gitconfig
wget https://raw.githubusercontent.com/farzonl/gitconfig/master/.vimrc
popd

#install xcode
xcode-select --install

#generate an ssh key copy it to the clipboard
yes "" | ssh-keygen -t rsa -b 4096 -C "farzonl@icloud.com" -P ""
pbcopy < ~/.ssh/id_rsa.pub
