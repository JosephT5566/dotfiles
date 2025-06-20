# === Oh My Zsh Location ===
export ZSH="$HOME/.oh-my-zsh"

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
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Powerlevel10k config if exists. If there's no .p10k.zsh, we can run `p10k configure`
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# === Fallback for Bash config ===
source ~/.bash_profile
