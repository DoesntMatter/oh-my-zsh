function get_vcs() {
  git branch >/dev/null 2>/dev/null && echo "git" && return
  hg root >/dev/null 2>/dev/null && echo "hg" && return
  svn info >/dev/null 2>/dev/null && echo "svn" && return
  return
}

function get_prompt_char() {
  git branch >/dev/null 2>/dev/null && echo "%{$fg[green]%}±%{$reset_color%}" && return
  hg root >/dev/null 2>/dev/null && echo "%{$fg_bold[red]%}☿%{$reset_color%}" && return
  svn info >/dev/null 2>/dev/null && echo "%{$fg_bold[red]%}±%{$reset_color%}" && return
  echo "%{$fg[cyan]%}¬%{$reset_color%}" && return
}
