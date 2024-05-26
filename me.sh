#!/usr/bin/env bash

# make sure it is run from the dotfiles folder
if [ "$PWD" != "/home/dimas/dotfiles" ]; then
    echo "Error, for safety it only can be run inside the dotfiles directory"
    exit 1
fi

echo "Populating the configuration"
stow .
echo "Populating is done!"
