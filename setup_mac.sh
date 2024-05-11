#!/bin/bash

# """ setup bash """
cp ~/.bash_profile ~/.bash_profile.bak
cp bash_profile ~/.bash_profile

# setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# """ setup homebrew """
# install homebrew
xcode-select --install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

# install packages from homebrew
brew install ansible ansible-lint awscli cloc curl fluxcd/tap/flux git go grep htop \
            iproute2mac jq kubernetes-cli md5sha1sum nmap openssh openssl python3 \
            rsync screen inetutils tmux vim watch wget xz zstd zsh


# install packages from homebrew cask
brew install --cask visual-studio-code discord docker firefox keepassxc keepingyouawake iterm2 \
            standard-notes protonvpn the-unarchiver tresorit vlc wireshark signal --force

# cleanup
brew cleanup

# """ setup git """
cp .gitconfig ~/.gitconfig

# """ install visidata """
pip3 install visidata virtualenv

# """ setup vim """
./setup_vim.sh
