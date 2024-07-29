#!/bin/bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    # TERMINAL UTILITIES --------------------------------------------------

    'curl'                  # Remote content retrieval
    'man-pages'             # Man pages
    'tmux'                  # Terminal multiplexer
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'zsh'                   # ZSH shell

    # DISK UTILITIES ------------------------------------------------------

    # GENERAL UTILITIES ---------------------------------------------------

    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'gdb'                   # GNU Debugger
    'glibc'                 # C libraries
    'lazygit'               # Git terminal GUI
    'neovim'                # Better than vim
    'python'                # Scripting language

    # WEB TOOLS -----------------------------------------------------------

    # COMMUNICATIONS ------------------------------------------------------

    # MEDIA ---------------------------------------------------------------

    # GRAPHICS AND DESIGN -------------------------------------------------

    # PRODUCTIVITY --------------------------------------------------------

    # VIRTUALIZATION ------------------------------------------------------

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
