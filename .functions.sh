
function load_smash_dir {
    for fnc in $1/*.sh
    do
        source $fnc
    done
}
