#!/bin/bash

# A simple script to install dotfiles

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the folders/files to symlink in the format "source:destination"
# source is relative to DOTFILES_DIR
# destination is relative to HOME
FILES=(
  ".config/sway:.config/sway"
  ".config/waybar:.config/waybar"
  ".config/alacritty:.config/alacritty"
  ".config/wofi:.config/wofi"
  ".config/nvim:.config/nvim"
  ".config/fastfetch:.config/fastfetch"
  ".config/kitty:.config/kitty"
  ".config/btop:.config/btop"
  ".config/mpv:.config/mpv"
  ".bashrc:.bashrc"
  ".bash_profile:.bash_profile"
)

echo "=> Installing dotfiles from $DOTFILES_DIR"

for entry in "${FILES[@]}"; do
  src="${entry%%:*}"
  dest="${entry##*:}"
  
  SRC_PATH="$DOTFILES_DIR/$src"
  DEST_PATH="$HOME/$dest"

  # Check if source exists in dotfiles repo
  if [ ! -e "$SRC_PATH" ]; then
    echo "Skipping $src - not found in dotfiles repo."
    continue
  fi

  # Create destination directory if it doesn't exist
  mkdir -p "$(dirname "$DEST_PATH")"

  # If the destination exists and is a symlink, remove it
  if [ -L "$DEST_PATH" ]; then
    rm "$DEST_PATH"
  # If the destination exists as a real file/directory, back it up
  elif [ -e "$DEST_PATH" ]; then
    echo "Backing up existing $dest to ${dest}.backup"
    mv "$DEST_PATH" "${DEST_PATH}.backup"
  fi

  # Create symlink
  echo "Symlinking $src -> $dest"
  ln -s "$SRC_PATH" "$DEST_PATH"
done

echo "=> Dotfiles installed successfully!"
