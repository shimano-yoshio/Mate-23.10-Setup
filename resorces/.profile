# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
if [ -d "$HOME/bin" ] ; then
    PATH="$PATH:$HOME/bin"
fi

export PATH=$HOME/.spacemacs.d/bin:$PATH

if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi

# rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# export PATH=$HOME/bin/pygments-main:$PATH

# TeX
# export TEXMF="~/texmf"
# export TEXINPUTS="$HOME/texmf/latex//:"
# export BSTINPUTS="$HOME/texmf/bibtex/bst//:"
# export BIBINPUTS="$HOME/texmf/bibtex/bib//:"
# export INDEXSTYLE=".:$TEXMF/makeindex/ist//"
# export INDEXDICTIONARY=".:$TEXMF/makeindex/dict//"

# golang
export PATH=/snap/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# gtags
export GTAGSCONF=~/.globalrc
# export GTAGSLABEL=pygments

# For Andoid by unake
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$HOME/Android/Sdk/tools:$PATH
export PATH=$HOME/Android/Sdk/platform-tools:$PATH

. "$HOME/.cargo/env"
