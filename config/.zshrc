export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="daveverwer"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use zsh-bat)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"

export PATH="$PATH:/home/electricsplash/.cargo/bin:/home/electricsplash/.local/bin"

export MANPAGER="vis"
export EDITOR="vis"
export LANG=en_US.UTF-8

alias ls="eza --icons=always --color=always --group-directories-first"
alias la="eza -la --icons=always --color=always --group-directories-first"
alias lg="eza --git-ignore --icons=always --color=always --group-directories-first"
alias e="emacs"
alias poweroff="loginctl poweroff"
alias reboot="loginctl reboot"
alias xinst="sudo xbps-install -S"
alias xrm="sudo xbps-remove"
alias xupd="sudo xbps-install -Su"

bindkey "^[h" backward-char
bindkey "^[j" down-line-or-history
bindkey "^[k" up-line-or-history
bindkey "^[l" forward-char
