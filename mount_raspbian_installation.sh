#!/bin/sh
if !java -version; then
if brew --version; then
    brew cask install osxfuse
    brew install ext4fuse  
else 
    echo "Install Homebrew first (https://brew.sh)"
fi


