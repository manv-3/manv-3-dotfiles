# My Dotfiles

This repository contains my personal dotfiles and configuration for my system.

## Included Configurations
- Sway
- Waybar
- Alacritty
- Kitty
- Wofi
- Neovim
- Btop
- Fastfetch
- MPV
- Bash configuration (`.bashrc`, `.bash_profile`)

## Installation

This repository comes with an `install.sh` script that automatically symlinks the configuration files from this repository to your home directory.

To install:

1. Clone or fork this repository into your home directory:
   ```bash
   git clone https://github.com/YOUR_USERNAME/my-dotfiles ~/my-dotfiles
   cd ~/my-dotfiles
   ```

2. Make sure the script is executable:
   ```bash
   chmod +x install.sh
   ```

3. Run the installation script:
   ```bash
   ./install.sh
   ```

The script will back up any existing configurations (e.g. `~/.config/sway` to `~/.config/sway.backup`) before creating the symlinks.

## Modifying configs
Since the configs in your home folder will be symlinked to this repository, any changes you make in `~/.config/` will be reflected here. Just run `git commit` and `git push` to save your updates to GitHub!
