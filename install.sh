#! /bin/bash

echo "Installing Homebrew..."

if [[ `command -v brew` ]];
then
    echo "Homebrew already installed"
    echo "Changing Homebrew owner user..."
    sudo chown -R `whoami` /usr/local/Homebrew/
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
    composer
    neovim
    node
    npm
)


for APP in ${APPS[@]}; 
do
    brew_install $APP
done


echo "Stowing files..."

stow -vt ~ */


if [[ ! -f ~/.vim/autoload/plug.vim ]];
then
    echo "Downloading and installing Vim-plug..."
 
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

else
    echo "Vim-plug already installed"
fi

nvim -u ./vim/.vim/vimplug.vimrc -c PlugInstall -c q -c q

#Install lsp dependencies
sudo chown -R `whoami` /usr/local/lib/node_modules
npm install -g \
    typescript \
    typescript-language-server \
    vscode-langservers-extracted

