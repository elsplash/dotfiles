#!/bin/bash

# Change to the config directory.
cd "$(dirname "$0")/config"

echo "ELECTRICONF"
echo "- The best configuration file there is."

printf "\n\n"

echo "[WARNING] Are you VERY sure you are Electricsplash?"
echo "[WARNING] This script assumes that you have already installed these packages."
echo "[WARNING] And will not install them in turn, this script will not install anything."

printf "\n[PROMPT] Are you sure you have already installed the packages? [y/N] -> "
read opt

if [[ "${opt,,}" != "y" ]]; then
    printf "\nGood, you know to stay away.\n"
    exit 0
fi

# Inject the .config folders first.
printf "\n[PROMPT] Install the .config files? [Y/n] -> "
read opt

if [[ "${opt,,}" != "n" ]]; then
    cp -r {alacritty,rofi,sway,vis,waybar} ~/.config
fi

# Install oh-my-zsh
printf "\n[NOTE] If you refuse to install oh-my-zsh, it will not import the .zshrc file"
echo "[NOTE] Because the .zshrc file depends on oh-my-zsh."

printf "\nInstall oh-my-zsh? [Y/n] -> "
read opt
if [[ "${opt,,}" != "n" ]]; then
	sh -c \
       "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	git clone https://github.com/zsh-users/zsh-autosuggestions \
        ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
        ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	git clone https://github.com/MichaelAquilina/zsh-you-should-use.git \
        $ZSH_CUSTOM/plugins/you-should-use

	git clone https://github.com/fdellwing/zsh-bat.git \
        $ZSH_CUSTOM/plugins/zsh-bat

    cp .zshrc ~
fi

# Emacs configuration
printf "\n[NOTE] If you wish to use my configuration files, you must use Emacs.\n\n"
printf "[PROMPT] Install Emacs configurations? [Y/n] -> "
read opt

if [[ "${opt,,}" != "n" ]]; then
    cp .emacs ~/.emacs
    cp -r .my.emacs ~/.my.emacs

    printf "\nOhh so you are electricsplash, mb gng.\n"
else
    printf "\n[...] ..."
    wait 3
    echo "[...] You are NOT Electricsplash."
    wait 2
    echo "[...] Right '$(whoami)'?"
fi
