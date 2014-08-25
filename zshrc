setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit
source ~/.zsh/func/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/func/bashmarks.sh
source ~/.zsh/func/git-flow-completion.zsh
source ~/.zsh/func/prompt_repo.zsh
source ~/.zsh/themes/lambda.zsh-theme

PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

export TERM='xterm-color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export NODE_PATH=/usr/local/lib/node_modules

# CPP compilation
export CPPFLAGS=-I/opt/X11/include

# Originally from Jonathan Penn, with modifications by Gary Bernhardt
function whodoneit() {
  (set -e &&
    for x in $(git grep -I --name-only $1); do
      git blame -f -- $x | grep $1;
    done
  )
}

export EDITOR='vim'
export VMAIL_HTML_PART_READER='elinks -dump'

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}

# A L I A S E S
#
# tmux
alias tmux="TERM=screen-256color-bce tmux"
alias t='tmuxinator'
alias ts='tmuxinator start'

# moving around
alias ls='ls -G'
alias ll='ls -lG'

# git
alias gk='gitk --all&'
alias gx='gitx --all'
alias ga='git add'
alias gp='git push'
alias gl="git log --pretty=tformat:'%Cred%h%Creset %Cblue%d%Creset %Cgreen%s%Creset %cn, %cr' --graph"
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

# heroku
alias gps='git push staging develop:master'
alias gpp='git push production master'

# hitch
alias unhitch='hitch -u'

# ruby
alias b='bundle exec'
alias be='bundle exec'
alias rc='cucumber'
alias rsp='rspec'
alias ber='bundle exec rake'
alias krakken=rake

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
