#!/bin/bash

# -----------------------------------------------------------------------------
# Bootstrap script for dotfiles
# This script sets up the dotfiles by creating symbolic links
# -----------------------------------------------------------------------------

set -e  # Exit on any error

DOTFILES_DIR="$HOME/.dotfiles"
CONFIG_DIR="$HOME/.config/alacritty"

echo "Setting up dotfiles..."

# Create necessary directories
mkdir -p "$CONFIG_DIR"

# Create symbolic links
ln -sf "$DOTFILES_DIR/alacritty/alacritty.toml" "$CONFIG_DIR/alacritty.toml"
ln -sf "$DOTFILES_DIR/alacritty/nord.toml" "$CONFIG_DIR/nord.toml"

echo "Dotfiles setup complete!"
echo "Restart Alacritty to apply changes."