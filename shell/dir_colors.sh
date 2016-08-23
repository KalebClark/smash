# SMASH ls colors
#
# This file determines if you are on OSX or linux and assigns
# the correct ls colors. You can turn this feature off or on 
# in the config file.

# You may uncomment the following lines if you want `ls' to be colorized:
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    export CLICOLOR=1
    export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    export LS_OPTIONS='--color=auto'
    eval "`dircolors`"
    alias ls='ls $LS_OPTIONS'
fi

