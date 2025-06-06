#!/bin/bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

  # SYSTEM --------------------------------------------------------------

  'blueman'                     # Bluetooth
  'bluez'                       # Bluetooth
  'bluez-utils'                 # Bluetooth
  'brightnessctl'               # Control screen brightness
  'ffmpegthumbnailer'           #
  'file-roller'                 #
# 'foliate'                     # Ebook reader
  'ghostty'                     # Terminal
  'gnome'                       #
  'gnome-tweaks'                #
  'gnome-shell-extensions'      #
  'gvfs-mtp galculator'         #
# 'hypridle'                    # Hyprland idle control
# 'hyprland'                    # Wayland window manager
# 'hyprlock'                    # Hyprland lock screen
# 'hyprpaper'                   # Hyprland wallpaper
  'lxappearance'                #
  'libadwaita'                  #
  'linux-lts'                   # Linux kernel, needed to get bluetooth mouse working
  'linux-zen'                   # Linux kernel, needed to get bluetooth mouse working
  'networkmanager'              #
  'nmtui'                       #
  'noto-fonts'                  #
  'polkit-kde-agent'            #
  'qt5-wayland'                 # Wayland display library
  'qt6-wayland'                 # Wayland display library
  'ripgrep'                     #
  'ristretto'                   #
# 'rofi'                        # Wayland program launcher
# 'swaync'                      # Wayland notifications, essential to Hyprland
# 'thunar'                      #
# 'thunar-archive-plugin'       #
  'ttf-fira-sans'               #
  'ttf-font-awesome'            #
  'ttf-hack-nerd'               #
  'tumbler'                     #
# 'waybar'                      # Wayland status bar
# 'wlsunset'                    # Wayland screen nightshift
  'xdg-desktop-portal-hyprland' #
  'xdg-user-dirs-gtk'           #

  # TERMINAL UTILITIES --------------------------------------------------

  'curl'      # Remote content retrieval
  'man-db'    # Man pages
  'man-pages' # Man pages
  'p7zip'     # File archiver
  'tmux'      # Terminal multiplexer
  'unzip'     # Zip compression program
  'wget'      # Remote content retrieval
  'yazi'      # File manager
  'zsh'       # ZSH shell

  # DISK UTILITIES ------------------------------------------------------

  # GENERAL UTILITIES ---------------------------------------------------

  # DEVELOPMENT ---------------------------------------------------------

  'clang'    # C Lang compiler
  'cmake'    # Cross-platform open-source make system
  'gcc'      # C/C++ compiler
  'gdb'      # GNU Debugger
  'git'      # Version control system
  'glibc'    # C libraries
  'lazygit'  # Git terminal GUI
  'neovim'   # Better than vim
  'python'   # Scripting language
  'valgrind' # C program memory checker
  'vim'      # Text editor

  # WEB TOOLS -----------------------------------------------------------

  'chromium' # Web browser

  # COMMUNICATIONS ------------------------------------------------------

  # MEDIA ---------------------------------------------------------------

  'pavucontrol'    # Audio control
  'pipewire'       # Multimedia framework, essential to Hyprland
  'pipewire-alsa'  # Route all applications using the ALSA API through Pipewire
  'pipewire-audio' # Pipewire audio support
  'pipewire-pulse' # Replaces pulseaudio
  'wireplumber'    # Pipewire policy/session manager, essential to Hyprland

  # GRAPHICS AND DESIGN -------------------------------------------------

  # PRODUCTIVITY --------------------------------------------------------

  'thunderbird' # Mail and calendar client

  # VIRTUALIZATION ------------------------------------------------------

)

YAYPKGS=(
  'brave-bin'             # Brave browser
  'discord_arch_electron' # Discord
  'kmonad-bin'            # Keyboard remapper
  'librewolf-bin'         # Librewolf privacy browser
# 'slack-desktop-wayland' # Slack
# 'wlogout'               # Wayland logout
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
