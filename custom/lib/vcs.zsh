function get_vcs() {
  git branch >/dev/null 2>/dev/null && echo "git" && return
  hg root >/dev/null 2>/dev/null && echo "hg" && return
  svn info >/dev/null 2>/dev/null && echo "svn" && return
  return
}

function get_prompt() {
  VCS=$(get_vcs)
  case $VCS in
  "git")
  echo "$ZSH_THEME_VCS_PROMPT_GIT"
  ;;
  "hg")
  echo "$ZSH_THEME_VCS_PROMPT_HG"
  ;;
  "svn")
  echo "$ZSH_THEME_VCS_PROMPT_SVN"
  ;;
  *)
  ;;
  esac
  return
}

function get_prompt_char() {
  VCS=$(get_vcs)
  case $VCS in
  "git")
  echo "%{$fg[green]%}±%{$reset_color%}"
  ;;
  "hg")
  echo "%{$fg_bold[red]%}☿%{$reset_color%}"
  ;;
  "svn")
  echo "%{$fg_bold[red]%}±%{$reset_color%}"
  ;;
  *)
  echo "%{$fg[cyan]%}¬%{$reset_color%}"
  ;;
  esac
  return
}
