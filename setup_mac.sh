#!/bin/bash

# """ setup homebrew """
# install xcode command line tools
if xcode-select -p &> /dev/null; then
    echo "Xcode Command Line Tools already installed, skipping..."
else
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install
fi

# install homebrew
if command -v brew &> /dev/null; then
    echo "Homebrew already installed, skipping installation..."
else
    echo "Installing Homebrew..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew doctor

# install packages from homebrew
brew install ansible ansible-lint awscli cdktf cloc curl fluxcd/tap/flux git go grep htop \
            inetutils iproute2mac jq kubernetes-cli md5sha1sum neovim nmap obsidian openssh \
            openssl opentofu podman python3 rsync screen sops tmux virtualenv visidata watch \
            wget xz zsh zsh-autosuggestions zstd


# install packages from homebrew cask
brew install --cask discord firefox ghostty keepassxc keepingyouawake podman-desktop \
            protonvpn signal standard-notes the-unarchiver tresorit visual-studio-code \
            vlc wireshark --force

# cleanup
brew cleanup

# """ setup zsh """
# install oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "oh-my-zsh already installed, skipping..."
else
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# copy .zshrc
if [ -f "$HOME/.zshrc" ]; then
    if ! cmp -s .zshrc "$HOME/.zshrc"; then
        echo "Backing up existing .zshrc to .zshrc.backup..."
        cp "$HOME/.zshrc" "$HOME/.zshrc.backup"
        cp .zshrc ~/.zshrc
        echo "Updated .zshrc"
    else
        echo ".zshrc already up to date, skipping..."
    fi
else
    cp .zshrc ~/.zshrc
    echo "Copied .zshrc"
fi

# """ setup git """
if [ -f "$HOME/.gitconfig" ]; then
    if ! cmp -s .gitconfig "$HOME/.gitconfig"; then
        echo "Backing up existing .gitconfig to .gitconfig.backup..."
        cp "$HOME/.gitconfig" "$HOME/.gitconfig.backup"
        cp .gitconfig ~/.gitconfig
        echo "Updated .gitconfig"
    else
        echo ".gitconfig already up to date, skipping..."
    fi
else
    cp .gitconfig ~/.gitconfig
    echo "Copied .gitconfig"
fi

# """ setup neovim """
./setup_neovim.sh
