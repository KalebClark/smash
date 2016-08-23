# SMASH
# Setup webserver groups
#
# This configures the user that you work in to be a part
# of the same group as the user that the webserver runs as
# and vice versa.
function www_config_groups {
    echo -e -n "${COLOR_RED}What is the normal username? ${COLOR_RESET}"
    read NORMAL_USER
    echo -e -n "${COLOR_RED}What is the webserver group? ${COLOR_RESET}"    
    read WEBSERVER_GROUP

    usermod -s -G $NORMAL_USER $WEBSERVER_GROUP
    usermod -s -G $WEBSERVER_GROUP $NORMAL_USER
}
