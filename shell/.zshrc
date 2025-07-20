#/a Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

CASE_SENSITIVE="false"

DISABLE_LS_COLORS="true"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

plugins=(
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Binds
bindkey "^H" backward-delete-word

# User configuration
export TERM=xterm-256color
export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

alias vim=nvim
alias cat=bat
alias ls='eza --icons --group-directories-first'
alias tree='eza --tree'
alias neofetch=fastfetch
alias zj=zellij
alias sudo='sudo '

# Zellij
if command -v zellij &>/dev/null && [ -z "$ZELLIJ" ]; then
    exec zellij
fi

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

