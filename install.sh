#!/usr/bin/env bash

if test ! $(which brew)
then
  echo "  Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Run the Homebrew Script
./brew.sh
