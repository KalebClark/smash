# SMASH
# Cheat Sheet Loader
#
# Function to display available cheat sheets and display them

function cheats {
    if [ -n "$1" ]; then
        cat ~/.smash/cheat_sheets/$1.cheat
    else 
        # No argument given. Display all available cheat sheets
        echo "Available Cheat Sheets"
        echo "======================"
        for cs in ~/.smash/cheat_sheets/*.cheat
        do
            NAME=`basename $cs .cheat`
            echo $NAME
        done
    fi    
}
