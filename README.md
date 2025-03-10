# Ansible-Initialize 

Use Ansible to quickly setup an operator environment in a quick and repeatable way.

Tested on 

- Ubuntu 24.04 LTS
- Kali 2025.1

## Install

Run `setup.sh` to install `pipx` and `ansible`

## Usage

Install all the tools with

`ansible-playbook install.yaml`

## Tools List

### Apt

- build-essential
- ffuf
- git
- hashid
- jq
- jython #Also configure path
- libpcap-dev
- locate
- ncat
- nmap
- python3
- python3-dev
- python3-venv
- shellcheck
- sqlmap
- terminator
- wfuzz

### Git

- trufflehog
- seclists

### GoLang

- croc
- httpx
- katana
- naabu

### Python/Pipx

- arjun
- netexec

### Cargo/Rust

- feroxbuster
