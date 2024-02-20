
# Powerline
# https://github.com/Powerlevel9k/powerlevel9k
#
# Left Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs)

# Right prompt
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time date)
# POWERLEVEL9K_DISABLE_RPROMPT=true

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Add a newline?
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false

POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_ETC_FOREGROUND='white'

# For Git
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

# Date Format
POWERLEVEL9K_DATE_FORMAT=%D{%Y-%m-%d}
# Time Format
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

POWERLEVEL9K_MODE="nerdfont-complete"

# Oh My Zsh
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
#    cargo
    cp
    git
    autopep8
    dircycle
    gem
    npm
    pep8
    pip
#    pyenv
    python
    rails
    rake
    rbenv
    ripgrep
    ruby
    rust
    sudo
    vscode
    web-search
    zsh-completions
)

# User configuration

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias chromium-browser="chromium-browser --proxy-pac-url=http://pac.int.nic.fujitsu.com/auth.pac"
# alias google-chrome="google-chrome  --proxy-server=http://rep.proxy.nic.fujitsu.com:8080"

# pyenv
#
#
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# End pyenv

# peco
#
#
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen1
}
zle -N peco-select-history
bindkey '^r' peco-select-history
# End Peco

# Rust
#
#
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/library"
# End Rust

# NVM
#
#
source  ~/.zsh_plugins/zsh-nvm/zsh-nvm.plugin.zsh
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Personal PATH
if [ -d "$HOME/.spacemacs.d/bin" ] ; then
    PATH="$HOME/.spacemacs.d/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

