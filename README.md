<img src="https://github.com/manv-3/manv-3-dotfiles/blob/master/assets/20260803_00h11m08s_grim.png">
If you are here for my wallpaper only you can find them in the /assets/wallpaper folder 

## My Device Specification
   Acer ALG A-15G-53 
   CPU- i7-13620H
   GPU- RTX 3050 6GB 
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

## mpvpaper high gpu & cpu  usage --
-If the video is in 4K - convert it to 1080p first using `ffmpeg`
`ffmpeg -y -i <path to original video> -vf scale=-1:1080 -c:v libx264 -crf 23 -preset veryfast <path to new video >`
-after this, change the path in `sway/config` file
- now restart mpvpaper using this command
- `pkill mpvpaper; swaymsg exec "/home/ms/.local/bin/mpvpaper -p -f -o 'loop no-audio hwdec=auto vo=dmabuf-wayland' '*' <path to new video>"`


# If you have AcerALG lapotop you can control keyboard backlight using this tool at https://github.com/24kaushik/alg-cli
