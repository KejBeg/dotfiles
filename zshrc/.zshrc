#/a Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

DISABLE_LS_COLORS="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# HIST_STAMPS="mm/dd/yyyy"

plugins=(
	git
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh
[ -f ~/.secrets ] && source ~/.secrets

# Binds
bindkey "^H" backward-delete-word

# User configuration

export Term=linux	
export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export ANDROID_HOME=/home/kejbeg/Android/Sdk          
# export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin


eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

alias vim=nvim
alias cat=bat
alias ls='eza --icons --group-directories-first'
alias tree='eza --tree'
alias windows="sudo grub-reboot 1 && sudo reboot"
alias neofetch=fastfetch
alias zj=zellij

fastfetch

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

