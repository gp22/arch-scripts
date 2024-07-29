#!/bin/bash

echo
echo "FINAL SETUP AND CONFIGURATION"

# ------------------------------------------------------------------------

echo
echo "CHANGING DEFAULT SHELL TO ZSH"
echo

chsh -s $(which zsh)

if [ $? -ne 0 ]; then
  echo
  echo "Failed."
  echo

  exit 1
else
  echo
  echo "Done!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING OH-MY-ZSH"
echo

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ $? -ne 0 ]; then
  echo
  echo "Failed."
  echo

  exit 1
else
  echo
  echo "Done!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "CLONING DOTFILES"
echo

git clone https://github.com/gp22/dotfiles.git ~/.config/dotfiles

if [ $? -ne 0 ]; then
  echo
  echo "Failed."
  echo

  exit 1
else
  echo
  echo "Done!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING DOTFILES"
echo

cd ~/.config/dotfiles

if [ $? -ne 0 ]; then
  echo
  echo "Failed."
  echo

  exit 1
fi

./install.sh

if [ $? -ne 0 ]; then
  echo
  echo "Failed."
  echo

  exit 1
else
  echo
  echo "Done!"
  echo
  echo "Reboot now..."
fi
