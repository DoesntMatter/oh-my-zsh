# -----------------------------------------------------------------------------
#          FILE: doesnt.zsh-theme
#   DESCRIPTION: oh-my-zsh theme file, based on smt by Stephen Tudo and
#                dogenpunk by Matthew Nelson
#        AUTHOR: DoesntMatter
#       VERSION: 0.1
#    SCREENSHOT: coming soon
# -----------------------------------------------------------------------------

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="|"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

# Format svn_repo_behind()
ZSH_THEME_SVN_PROMPT_BEHIND="%{$fg_bold[red]%}!%{$reset_color%}"

# Colors vary depending on time lapsed.
ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[green]%}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[cyan]%}"

# Format prompt appearance
ZSH_THEME_VCS_PROMPT_GIT="➤  $(git_prompt_short_sha)$(git_prompt_info) $(git_time_since_commit)$(git_prompt_status)%{$reset_color%}"
ZSH_THEME_VCS_PROMPT_HG=""
ZSH_THEME_VCS_PROMPT_SVN="➤  %{$fg_bold[yellow]%}$(svn_prompt_rev)%{$reset_color%}|$(svn_prompt_branch)$(svn_repo_behind)"

PROMPT='
[%{$fg[white]%}%*%{$reset_color%}] \
%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%} %{$fg[magenta]%}%~ %{$reset_color%}\
$(get_prompt)
%{$fg[red]%}%!%{$reset_color%} $(get_prompt_char): '
