source ~/.smash/.functions.sh

source ~/.smash/config.sh

load_smash_dir ~/.smash/shell       # Load Shell Custom settings
load_smash_dir ~/.smash/git         # Load GIT Custom settings
load_smash_dir ~/.smash/ssh         # Load SSH Custom settings
load_smash_dir ~/.smash/www         # Load WWW Custom Settings

source ~/.smash/cheatsheets/cheats.sh # Load Cheat Sheet function

export EDITOR=$SMASH_EDITOR
