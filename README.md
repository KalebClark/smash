# SMASH
SMASH is not a new shell, but a set of enhancements to the bash shell to make your experience just a little bit better.

### Install
Simply clone this repo into ~/.smash and run the ```./install.sh``` script. It will detect if you have already installed smash at some point. If not, all it does is add the following line to your existing .bashrc file.
```
source ~/.smash/smash.sh
```

How to clone the repo into ~/.smash and install you ask?
```
$ git clone https://github.com/KalebClark/smash.git ~/.smash
$ cd ~/.smash
$ ./install.sh
```

### Features
 * Modular features. New features can be added just by sourcing the directory they live in.
 * Super cool prompt which includes support for GIT.
 * Cheat Sheets for various things like git flow, docker, chef etc...
 * LS Colors that work on both mac os and linux
 * SSH custom helper functions
 * Apache2 custom helper functions
 * A super cool .vimrc
