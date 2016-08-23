# SMASH
# Git flow custom helpers

function git_flow_quick_release {
    git flow release start $1
    git flow release publish $1
    git flow release finish $1
    git push --tags    
}
