#! /bin/bash

echo "Installing Homebrew..."

if [[ `command -v brew` ]];
then
    echo "Homebrew already installed"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew_install() {
    echo "Installing $1..."

    if [[ `command -v $1` ]]
    then
        echo "$1 already installed"
    else
        brew install $1
    fi
}


APPS=(
    tree
    tldr
    stow
    tmux 
)


for APP in ${APPS[@]}; 
do
    brew_install $APP
done


echo "Stowing files..."

stow -vt ~ */
