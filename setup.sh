#!/bin/bash
set -e
# Apt Update
sudo apt-get update -y

# Install Python3
sudo apt-get install -y python3 python3-dev python3-venv pipx

# Install Pipx
# sudo apt-get purge -y pipx # Uninstall old pipx versions
# python3 -m pip install --user pipx --break-system-packages || python3 -m pip install pipx

# Source .bashrc so pipx path will be found.
export PATH="$PATH:$HOME/.local/bin"

# Global ensurepath
# python3 -m pipx ensurepath --force
sudo pipx ensurepath --global

# Install Ansible
pipx install --include-deps ansible

# Add ansible-lint for any dev
# Use the following python binary 
# ~/.local/share/pipx/venvs/ansible/bin/python3
pipx inject ansible ansible-lint

# Source again to include ansible packages in PATH
#source "$HOME/.bashrc"

ansible-galaxy collection install community.general
