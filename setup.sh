#!/bin/bash

# Apt Update
sudo apt-get update -y

# Install Python3
sudo apt install python3 python3-dev python3-venv

# Install Pipx
sudo apt purge pipx # Uninstall old pipx versions
python3 -m pip install --user pipx
python3 -m pipx ensurepath
sudo pipx ensurepath --global

# Source .bashrc so pipx path will be found.
source "$HOME/.bashrc"

# Install Ansible
pipx install --include-deps ansible

# Add ansible-lint for any dev
# Use the following python binary 
# ~/.local/share/pipx/venvs/ansible/bin/python3
pipx inject ansible ansible-lint

ansible-galaxy collection install community.general
