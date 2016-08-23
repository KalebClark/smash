# SMASH 
# Install Scsript
#
# Installs SMASH if it is not already installed.


 if [[ $(grep "source" ~/.bashrc | grep smash | wc -l) =~ '1' ]]; then
     echo "Looks like smash is already installed! Sweet!"
 else
     echo "Installing smash by appending the source command to the end of your .bashrc file"
     echo "source ~/.smash/smash.sh" >> ~/.bashrc
 fi    

if [ -e ~/.vimrc ]; then
    echo "I see you already have a .vimrc. Would you like to replace it with SMASH vimrc? (y/n)"
    read REPLACE
    if [[ $REPLACE == 'y' || $REPLACE == 'Y' ]]; then
        cp -f ~/.smash/vimrc ~/.vimrc
        echo "Awesome. It really is a great vimrc"
    else
        echo "Ok. But its a pretty cool vimrc. You should look at it anyway"
        cat ~/.smash/vimrc
        echo -e "I did not install anything. Just showing you the sweet vimrc"
    fi
fi
