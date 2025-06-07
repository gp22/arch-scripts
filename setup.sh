#!/bin/bash

echo
echo "FINAL SETUP AND CONFIGURATION"

# ------------------------------------------------------------------------

echo
echo "ENABLING NETWORK MANAGER"
echo

sudo systemctl start NetworkManager

if [ $? -ne 0 ]; then
  echo
  echo "Failed to start NetworkManager service."
  echo

  exit 1
else
  echo
  echo "Done starting NetworkManager service!"
  echo
fi

sudo systemctl enable NetworkManager

if [ $? -ne 0 ]; then
  echo
  echo "Failed to enable NetworkManager service."
  echo

  exit 1
else
  echo
  echo "Done enabling NetworkManager service!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "CHANGING DEFAULT SHELL TO ZSH"
echo

chsh -s $(which zsh)

if [ $? -ne 0 ]; then
  echo
  echo "Failed to change default shell."
  echo

  exit 1
else
  echo
  echo "Done changing default shell!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING OH-MY-ZSH"
echo

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ $? -ne 0 ]; then
  echo
  echo "Failed to install Oh My Zsh."
  echo

  exit 1
else
  echo
  echo "Done installing Oh My Zsh!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "CLONING DOTFILES"
echo

git clone https://github.com/gp22/dotfiles.git ~/.config/dotfiles

if [ $? -ne 0 ]; then
  echo
  echo "Failed to clone dotfiles."
  echo

  exit 1
else
  echo
  echo "Done cloning dotfiles!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "SETTING UP KMONAD SERVICE"
echo

sudo cp ~/.config/dotfiles/keyboard_laptop.service /etc/systemd/system/keyboard_laptop.service

if [ $? -ne 0 ]; then
  echo
  echo "Failed to copy keyboard_laptop.service to /etc/systemd/system."
  echo

  exit 1
else
  echo
  echo "Done copying keyboard_laptop.service to /etc/systemd/system!"
  echo
fi

sudo systemctl daemon-reload

if [ $? -ne 0 ]; then
  echo
  echo "Failed to run sudo systemctl daemon-reload."
  echo

  exit 1
else
  echo
  echo "Done running sudo systemctl daemon-reload!"
  echo
fi

sudo systemctl start keyboard_laptop

if [ $? -ne 0 ]; then
  echo
  echo "Failed to start keyboard_laptop service."
  echo

  exit 1
else
  echo
  echo "Done starting keyboard_laptop service!"
  echo
fi

sudo systemctl enable keyboard_laptop

if [ $? -ne 0 ]; then
  echo
  echo "Failed to enable keyboard_laptop service."
  echo

  exit 1
else
  echo
  echo "Done enabling keyboard_laptop service!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING DOTFILES"
echo

cd ~/.config/dotfiles && chmod +x install.sh && ./install.sh

if [ $? -ne 0 ]; then
  echo
  echo "Failed to install dotfiles."
  echo

  exit 1
else
  echo
  echo "Done installing dotfiles!"
  echo
  echo "Reboot now..."
fi
