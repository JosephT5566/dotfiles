##### INSTALLED BY github.com/dt665m/dotfiles #####

# === Go Environment ===
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:/usr/local/bin

# === Rust Environment ===
source ~/.cargo/env

# === Oh My Zsh Location ===
export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

# === Plugin Management ===
source ~/.zsh_plugins.sh

# === Theme Settings ===
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir go_version vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator history background_jobs ram load time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517\uf054%{%F{default}%} "

POWERLEVEL9K_MODE='nerdfont-complete'
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_COLOR_SCHEME='light'

# === Powerlevel9k Color Customizations ===
POWERLEVEL9K_VIRTUALENV_BACKGROUND='springgreen4'

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='springgreen3'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'

POWERLEVEL9K_DIR_HOME_BACKGROUND='springgreen2'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='springgreen2'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'

POWERLEVEL9K_OS_ICON_BACKGROUND='grey0'
POWERLEVEL9K_OS_ICON_FOREGROUND='deepskyblue3'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='grey11'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='grey11'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='grey11'

POWERLEVEL9K_STATUS_OK_BACKGROUND='springgreen2'
POWERLEVEL9K_STATUS_OK_FOREGROUND='black'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='red'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='black'

# === History Settings ===
SAVEHIST=50
HISTFILE=~/.zsh_history

# === Alias ===
alias git=hub

# === Fallback for Bash config ===
source ~/.bash_profile

# === Oh My Zsh Core ===
# Optional: Set ZSH again if you want to override antibody config (e.g. debugging)
# export ZSH="$HOME/.oh-my-zsh"
# plugins=(git)
# source $ZSH/oh-my-zsh.sh
