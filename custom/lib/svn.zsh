function svn_prompt_rev() {
    REV=$(svn info 2> /dev/null | grep 'Revision:' | cut -d" " -f2) && echo "$REV"
}

function svn_prompt_branch() {
    BRANCH=$(svn info 2> /dev/null | grep 'URL: ' | cut -d"/" -f4) && echo "$BRANCH"
}

function svn_repo_behind() {
    BASE_URL=$(svn info 2> /dev/null | grep 'URL: ' | cut -d" " -f2 | cut -d"/" -f1,2,3)
    BASE_REV=$(svn info $BASE_URL 2> /dev/null | grep 'Revision:' | cut -d" " -f2)
    
    if [[ $(svn_prompt_rev) < $BASE_REV ]]; then
        echo "$ZSH_THEME_SVN_PROMPT_BEHIND" && return
    fi
    echo "$ZSH_THEME_SVN_PROMPT_ACTUAL" && return
}
