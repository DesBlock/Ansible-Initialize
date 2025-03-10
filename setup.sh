#!/bin/bash

# Apt Update
sudo apt-get update -y

# Install Python3
sudo apt-get install -y python3 python3-dev python3-venv 

# Install Pipx
sudo apt-get purge -y pipx # Uninstall old pipx versions
sudo python3 -m pip install pipx --break-system-packages || sudo python3 -m pip install pipx

# Source .bashrc so pipx path will be found.
source "$HOME/.bashrc"

# Global ensurepath
sudo pipx ensurepath --global

# Install Ansible
pipx install --include-deps ansible

# Add ansible-lint for any dev
# Use the following python binary 
# ~/.local/share/pipx/venvs/ansible/bin/python3
pipx inject ansible ansible-lint

ansible-galaxy collection install community.general
