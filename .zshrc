# Path to your zsh root folder.
export ZSH=$HOME/.zsh

# Enable UTF-8 support
# /usr/bin/locale -a
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8


# Path to the history file.
export HISTFILE=~/.zsh_history

# Number of lines to save in the history file.
export HISTFILESIZE=1000000000

# How many commands zsh will load to memory.
export HISTSIZE=10000

setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

export HISTTIMEFORMAT="[%F %T] "


# Fast syntax highlighting plugin.
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Zsh auto suggestion plugin.
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh completions plugin.
fpath=($ZSH/plugins/zsh-completions/src $fpath)

# Zsh history substring search plugin.
source $ZSH/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Export statements for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Autocompletion for kubectl.
source <(kubectl completion zsh)

# Autocompletion for helm.
source <(helm completion zsh)

# Autocompletion for colima.
source <(colima completion zsh)


# Colors for ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


# Alias
alias ls='ls -G'
alias ll='ls -l --color=auto'
alias tte='open -tf'
alias whitespace="sed 's/ /·/g;s/\t/￫/g;s/\r/§/g;s/$/¶/g'"

export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
