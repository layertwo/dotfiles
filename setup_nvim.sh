#!/bin/bash
# setup script for neovim

mkdir -p ~/.config/nvim/

# copy init.lua
if [ -f "$HOME/.config/nvim/init.lua" ]; then
    if ! cmp -s .config/nvim/init.lua "$HOME/.config/nvim/init.lua"; then
        echo "Backing up existing init.lua to init.lua.backup..."
        cp "$HOME/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua.backup"
        cp .config/nvim/init.lua ~/.config/nvim/init.lua
        echo "Updated init.lua"
    else
        echo "init.lua already up to date, skipping..."
    fi
else
    cp .config/nvim/init.lua ~/.config/nvim/init.lua
    echo "Copied init.lua"
fi
