# SMASH
# ssh_copy_key
#
# Prompt driven ssh key copy. Use this to copy your id_rsa.pub to remote
# hosts.

function ssh_copy_key {
    echo -e "${COLOR_GREEN}Copying ~/.ssh/id_rsa.pub to remote host${COLOR_RESET}"
    echo -e -n "${COLOR_RED}Remote host to copy ssh key to: ${COLOR_RESET}"
    read HOST
    echo -e -n "${COLOR_RED}Remote user to copy key to: ${COLOR_RESET}"
    read REMOTE_USER
    cat ~/.ssh/id_rsa.pub | ssh $REMOTE_USER@$HOST 'cat >> .ssh/authorized_keys'    
}
