setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit
source ~/.zsh/func/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/func/bashmarks.sh

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

PATH=~/Developer/bin:/Users/ecomba/Developer/sbin:/usr/local/bin:/usr/local/sbin:$PATH

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}

CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure/1.2.0/clojure.jar:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Originally from Jonathan Penn, with modifications by Gary Bernhardt
function whodoneit() {
    (set -e &&
        for x in $(git grep -I --name-only $1); do
            git blame -f -- $x | grep $1;
        done
    )
}

# A L I A S E S
# hitch
alias unhitch='hitch -u'

# git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# Add the following to your ~/.bashrc or ~/.zshrc
hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
# Uncomment to persist pair info between terminal instances
# hitch

