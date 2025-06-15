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
	battery
  zsh-autosuggestions
	)

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

export ANDROID_HOME=/home/kejbeg/Android/Sdk          
# export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin


eval "$(starship init zsh)"

source <(fzf --zsh)

export FZF_DEFAULT_COMMAND='fd --hidden --strip-cwd-prefix --exclude .git --exclude node_modules --exclude .cache --exclude .cargo --exclude .yarn --exclude .idea --exclude .vscode --exclude .DS_Store --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git --exclude node_modules --exclude .cache --exclude .cargo --exclude .yarn --exclude .idea --exclude .vscode --exclude .DS_Store"

export FZF_DEFAULT_OPTS="--height 50% --border --color=bg:#282828,fg:#ebdbb2,hl:#d3869b,info:#8ec07c,prompt:#fabd2f,spinner:#fe8019,marker:#83a598,fg+:#ebdbb2,bg+:#282828,hl+:#d3869b"

alias vim=nvim
alias cat=bat
alias ls='eza --icons --group-directories-first'
alias tree='eza --tree'
alias windows="sudo grub-reboot 1 && sudo reboot"
alias neofetch=fastfetch
alias inv='selection=$(fzf -m --preview "bat {}"); if [ -n "$selection" ]; then nvim "$selection"; fi'
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

