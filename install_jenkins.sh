#!/bin/sh
if !java -version; then
    echo "Please ensure a default JRE is available."
else
    # download the repository key and add it to apt
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    # add the new repository URL to your apt sources
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    # update the apt cache
    sudo apt update
    # install Jenkins silently
    sudo apt install jenkins -y
fi
