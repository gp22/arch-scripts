#!/bin/bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

  # SYSTEM --------------------------------------------------------------

  'alacritty'
  'blueman'
  'bluez'
  'bluez-utils'
  'brightnessctl'
  'dunst'
  'ffmpegthumbnailer'
  'file-roller'
  'foliate'
  'gvfs-mtp galculator'
  'hypridle'
  'hyprland'
  'hyprlock'
  'hyprpaper'
  'kitty'
  'lxappearance'
  'libadwaita'
  'networkmanager'
  'nmtui'
  'noto-fonts'
  'polkit-kde-agent'
  'qt5-wayland'
  'qt6-wayland'
  'ripgrep'
  'ristretto'
  'rofi'
  'thunar'
  'thunar-archive-plugin'
  'ttf-fira-sans'
  'ttf-font-awesome'
  'ttf-hack-nerd'
  'tumbler'
  'waybar'
  'wlsunset'
  'xdg-desktop-portal-hyprland'
  'xdg-user-dirs-gtk'

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
  'gcc'     # C/C++ compiler
  'gdb'     # GNU Debugger
  'git'     # Version control system
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

  'thunderbird'

  # VIRTUALIZATION ------------------------------------------------------

)

YAYPKGS=(
  'brave-bin'
  'discord_arch_electron'
  'kmonad-bin'
  'librewolf-bin'
  'slack-desktop-wayland'
  'wlogout'
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
