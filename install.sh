#!/usr/bin/env bash

if test ! $(which brew)
then
  echo "  Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Run the Homebrew Script
./brew.sh


# Make ZSH the default shell
csh -s $(which zsh)


# Create Sites directory
mkdir $HOME/Sites
