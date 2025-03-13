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

Update the README with tool list

`ansible-playbook update_readme.yaml`

## Tools List

### Apt

- build-essential
- ffuf
- git
- hashid
- jq
- jython
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

- chisel
- ligolo-ng
- nishang
- PEASS-ng
- seclists
- SharpHound
- trufflehog

### GoLang

- croc
- httpx
- katana
- naabu

### Python/Pipx

- arjun
- bloodhound
- git-dumper
- netexec

### Cargo/Rust

- feroxbuster
