#!/bin/bash

# """ setup homebrew """
# install homebrew
xcode-select --install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

# install packages from homebrew
brew install ansible ansible-lint awscli cdktf cloc curl podman fluxcd/tap/flux git go grep htop \
            iproute2mac jq kubernetes-cli md5sha1sum nmap openssh openssl opentofu python3 \
            rsync screen sops inetutils tmux neovim watch wget xz zstd zsh zsh-autosuggestions


# install packages from homebrew cask
brew install --cask visual-studio-code discord podman-desktop firefox keepassxc keepingyouawake ghostty \
            standard-notes protonvpn the-unarchiver tresorit vlc wireshark signal --force

# cleanup
brew cleanup

# """ setup zsh """
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc

# """ setup git """
cp .gitconfig ~/.gitconfig

# """ install visidata """
pip3 install visidata virtualenv

# """ setup neovim """
./setup_neovim.sh
