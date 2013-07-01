fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

#"export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
export PATH="/usr/local/Cellar/rbenv/bin:$PATH"
export RBENV_ROOT=/usr/local/Cellar/rbenv
export PATH="$RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH"
