#!/bin/bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

  # SYSTEM --------------------------------------------------------------

  'networkmanager'
  'nmtui'
  'hyprland'
  'waybar'
  'dunst'
  'hyprpaper'
  'hypridle'
  'xdg-desktop-portal-hyprland'
  'xdg-user-dirs-gtk'
  'wofi'
  'noto-fonts'
  'ttf-fira-sans'
  'ttf-font-awesome'
  'lxappearance'
  'libadwaita'
  'brightnessctl'
  'kitty'
  'alacritty'
  'hyprlock'
  'mousepad'
  'file-roller'
  'tumbler'
  'ffmpegthumbnailer'
  'gvfs-mtp galculator'
  'ristretto'
  'ttf-hack-nerd'
  'ripgrep'
  'thunar'
  'thunar-archive-plugin'
  'bluez'
  'bluez-utils'
  'blueman'
  'wlsunset'

  # TERMINAL UTILITIES --------------------------------------------------

  'curl'      # Remote content retrieval
  'man-db'    # Man pages
  'man-pages' # Man pages
  'p7zip'     # File archiver
  'tmux'      # Terminal multiplexer
  'unzip'     # Zip compression program
  'wget'      # Remote content retrieval
  'zsh'       # ZSH shell

  # DISK UTILITIES ------------------------------------------------------

  # GENERAL UTILITIES ---------------------------------------------------

  # DEVELOPMENT ---------------------------------------------------------

  'clang'   # C Lang compiler
  'cmake'   # Cross-platform open-source make system
  'git'     # Version control system
  'gcc'     # C/C++ compiler
  'gdb'     # GNU Debugger
  'glibc'   # C libraries
  'lazygit' # Git terminal GUI
  'neovim'  # Better than vim
  'python'  # Scripting language
  'vim'

  # WEB TOOLS -----------------------------------------------------------

  # COMMUNICATIONS ------------------------------------------------------

  # MEDIA ---------------------------------------------------------------

  # GRAPHICS AND DESIGN -------------------------------------------------

  # PRODUCTIVITY --------------------------------------------------------

  # VIRTUALIZATION ------------------------------------------------------

)

YAYPKGS=(
  'wlogout'
  'librewolf-bin'
  'brave-bin'
  'kmonad-bin'
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

for PKG in "${YAYPKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  yay -S "$PKG" --noconfirm
done

echo
echo "Done!"
echo
