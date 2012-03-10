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
   echo "➤  $(git_prompt_short_sha)$(git_prompt_info) $(git_time_since_commit)$(git_prompt_status)%{$reset_color%}"
  ;;
  "hg")
  echo ""
  ;;
  "svn")
  echo "➤  %{$fg_bold[yellow]%}$(svn_prompt_rev)%{$reset_color%}|$(svn_prompt_branch)$(svn_repo_behind)"
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
