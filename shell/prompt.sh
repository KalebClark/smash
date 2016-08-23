# SMASH Prompt

username=`whoami`
PS1="${debian_chroot:+($debian_chroot)}"
#PS1+="\[$COLOR_RED\]\u@\h"
if [[ $username =~ "root" ]]; then
    PS1+="\[$COLOR_RED\]"
else
    PS1+="\[$COLOR_BLUE\]"
fi

PS1+="\u"
PS1+="\[$COLOR_YELLOW\]@"
PS1+="\[$COLOR_WHITE\]\h"
PS1+="\[$COLOR_RESET\]"

if [[ $SMASH_GIT_PROMPT ]]; then
    PS1+="\[\$(git_color)\]"
    PS1+="\$(git_branch)"
fi

PS1+="\[$COLOR_BLUE\]"
PS1+="[\W] \$ "
PS1+="\[$COLOR_RESET\]"

export PS1
