##### INSTALLED BY github.com/dt665m/dotfiles #####

# === Go Environment ===
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:/usr/local/bin

# === Rust Environment ===
source ~/.cargo/env

# === Oh My Zsh Location ===
export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

# === Plugin Management ===
# Zinit setup (https://github.com/zdharma-continuum/zinit)
if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
  sh -c "$(curl -fsSL https://git.io/zinit-install)"
fi
source ~/.zinit/bin/zinit.zsh

# Load plugins from list
if [[ -f ~/.zsh_plugins.txt ]]; then
  while read -r line; do
    [[ "$line" =~ ^#.*$ || -z "$line" ]] && continue
    # Remove inline comments and trim
    plugin="${line%%#*}"
    plugin="${plugin%"${plugin##*[![:space:]]}"}"
    [[ -z "$plugin" ]] && continue
    zinit light $plugin
  done < ~/.zsh_plugins.txt
fi

# === History Settings ===
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# === Alias ===
alias git=hub

# === Powerlevel10k Setup ===
# (Assumes you installed it with Homebrew or antibody)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Powerlevel10k config if exists. If there's no .p10k.zsh, we can run `p10k configure`
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# === Fallback for Bash config ===
source ~/.bash_profile

# === Oh My Zsh Core ===
# Optional: Set ZSH again if you want to override antibody config (e.g. debugging)
# export ZSH="$HOME/.oh-my-zsh"
# plugins=(git)
# source $ZSH/oh-my-zsh.sh
