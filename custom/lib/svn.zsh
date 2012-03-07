function svn_prompt_rev() {
    REV=$(svn info | grep 'Revision:' | cut -d" " -f2 2> /dev/null) && echo "$REV"
}

function svn_prompt_branch() {
    BRANCH=$(svn info | grep 'URL: ' | cut -d"/" -f4 2> /dev/null) && echo "$BRANCH"
}

function svn_repo_behind() {
    BASE_URL=$(svn info | grep 'URL: ' | cut -d" " -f2 | cut -d"/" -f1,2,3 2> /dev/null)
    BASE_REV=$(svn info $BASE_URL | grep 'Revision:' | cut -d" " -f2 2> /dev/null)
    
    if [[ $(svn_prompt_rev) < $BASE_REV ]]; then
        echo "$ZSH_THEME_SVN_PROMPT_BEHIND" && return
    fi
    echo "$ZSH_THEME_SVN_PROMPT_ACTUAL" && return
}
