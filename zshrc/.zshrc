# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

DISABLE_LS_COLORS="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# HIST_STAMPS="mm/dd/yyyy"

plugins=(git battery)

source $ZSH/oh-my-zsh.sh

# Binds
bindkey "^H" backward-delete-word

# User configuration

export Term=linux	
export LIBVIRT_DEFAULT_URI="qemu:///session"
export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PHP_CS_FIXER_IGNORE_ENV=1
export LS_COLORS="exfat=00;37:di=00;34:*.txt=00;37:*.jpg=00;37:*.mp4=00;37"

export ANDROID_HOME=$HOME/Android/Sdk          
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin




eval "$(starship init zsh)"

alias vim=nvim
alias ls='eza --icons --group-directories-first'
alias windows="sudo grub-reboot 1 && sudo reboot"
alias neofetch=fastfetch

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

