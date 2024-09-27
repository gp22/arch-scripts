# Arch Linux Post Installation Setup and Config Scripts

## Installation

Run these commands as a non-root user with sudo privileges.

Install git

```bash
sudo pacman -S git --noconfirm
```

Install yay

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sri
```

Clone this repo

```bash
git clone https://github.com/gp22/arch-scripts.git ~/arch-scripts
```

cd into `~/arch-scripts` and run `./install.sh`

```bash
cd ~/arch-scripts && chmod 755 install.sh && ./install.sh
```

Once you're in the zsh shell, `exit` so the installation can continue.
