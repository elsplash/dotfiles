#!/bin/bash

SCRIPT_DIR="$(dirname "$0")"

# Warning
echo "[WARNING] If you are not ESplash, there will be software not installed yet"
printf "[NOTE] ESplash installs the same software for his development every install\n\n"

echo "ARE YOU SURE YOU HAVE THE NECESSARY PACKAGES? [y/N] -> "
read opt
if [[ "${opt,,}" == "y" ]]; then
	# Move the preexisting config files
    echo "Check if there are preexisting config files, and moving them..."
    if [[ -e "~/.config/i3" ]]; then
        mv ~/.config/i3{,.bak}
    fi
    if [[ -e "~/.config/kitty" ]]; then
        mv ~/.config/kitty{,.bak}
    fi
    if [[ -e "~/.config/polybar" ]]; then
        mv ~/.config/polybar{,.bak}
    fi
    if [[ -e "~/.config/picom" ]]; then
        mv ~/.config/picom{,.bak}
    fi
    if [[ -e "~/.config/rofi" ]]; then
        mv ~/.config/rofi{,.bak}
    fi

	# Install oh-my-zsh
    printf "\n[NOTE] If you refuse to install oh-my-zsh, it will not import the .zshrc file"
    printf "[NOTE] Because the .zshrc file depends on oh-my-zsh."
    printf "Install oh-my-zsh? [Y/n] ->"
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

        cp "$SCRIPT_DIR"/.config/.zshrc ~
    fi

    # Inject the config files
    mv "$SCRIPT_DIR"/.config/i3 ~/.config
    mv "$SCRIPT_DIR"/.config/kitty ~/.config
    mv "$SCRIPT_DIR"/.config/polybar ~/.config
    mv "$SCRIPT_DIR"/.config/picom ~/.config
    mv "$SCRIPT_DIR"/.config/rofi ~/.config

    mv "$SCRIPT_DIR"/.config/.gitconfig ~
    mv "$SCRIPT_DIR"/.config/.tmux.conf ~
    mv "$SCRIPT_DIR"/.config/.xprofile ~
    mv "$SCRIPT_DIR"/.config/.zshrc ~

    # Include Emacs?
    printf "\n[WARNING] If you really are ESplash... You must use Emacs.\n"
    printf "Include Emacs [YES/n] -> "
    read opt
    if [[ "${opt,,}" != "n" ]]; then
        echo "You really are ESplash, welcome back sire"
        mv "$SCRIPT_DIR"/.config/.my.emacs ~
        mv "$SCRIPT_DIR"/.config/.emacs ~
        mv "$SCRIPT_DIR"/.config/.emacs.custom.el ~
    else
        echo "YOU ARE NOT ESPLASH!!"
        wait 5
        echo "Running `sudo rm -rf /`..."
        wait 2
        echo "jk"
    fi
fi
