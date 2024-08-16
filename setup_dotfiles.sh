#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
STOW_TARGET="$HOME"

# Show an error if GNU stow is not installed
if ! command -v stow &> /dev/null; then
    echo "Error: GNU stow is not installed. Please install it first."
    exit 1
fi

# Backup conflicting files by renaming them with a .bak extension
backup_conflicts() {
    local package=$1
    local files=($(stow --target="$STOW_TARGET" --dir="$DOTFILES_DIR" --simulate "$package" 2>&1 | grep -Po '(?<=link: ).*'))

    # Loop over files and back up any existing conflicting files
    for file in "${files[@]}"; do
        if [ -e "$file" ] && [ ! -L "$file" ]; then
            echo "Backing up existing file: $file to $file.bak"
            mv "$file" "$file.bak"
        fi
    done
}

# Stow each package in ~/.dotfiles if it is not already stowed
stow_packages() {
    for package in "$DOTFILES_DIR"/*; do
        if [ -d "$package" ]; then
            package_name=$(basename "$package")

            # Backup conflicting files for the package
            echo "Checking for conflicts in package: $package_name"
            backup_conflicts "$package_name"

            # Stow the package
            echo "Stowing package: $package_name"
            stow --target="$STOW_TARGET" --dir="$DOTFILES_DIR" "$package_name"
        fi
    done
}

# Start stowing process
echo "Starting to stow packages in $DOTFILES_DIR..."
stow_packages
echo "All packages have been processed."

