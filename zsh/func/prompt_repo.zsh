function prompt_repo {
  git branch >/dev/null 2>/dev/null && echo 'git' && return
  hg root >/dev/null 2>/dev/null && echo 'hg' && return
  echo '-|-'
}
