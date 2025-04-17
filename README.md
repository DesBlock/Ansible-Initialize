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

### [Apt](vars/apt.yaml)

- [aha](vars/apt.yaml)
- [bash-completion](vars/apt.yaml)
- [bind9-host](vars/apt.yaml)
- [build-essential](vars/apt.yaml)
- [csvkit](vars/apt.yaml)
- [ffuf](vars/apt.yaml)
- [gcp](vars/apt.yaml)
- [git](vars/apt.yaml)
- [grepcidr](vars/apt.yaml)
- [hashid](vars/apt.yaml)
- [jq](vars/apt.yaml)
- [jython](vars/apt.yaml)
- [libfuse3-4](vars/apt.yaml)
- [libpcap-dev](vars/apt.yaml)
- [locate](vars/apt.yaml)
- [lolcat](vars/apt.yaml)
- [make](vars/apt.yaml)
- [mtr-tiny](vars/apt.yaml)
- [ncat](vars/apt.yaml)
- [nmap](vars/apt.yaml)
- [python3](vars/apt.yaml)
- [python3-dev](vars/apt.yaml)
- [python3-venv](vars/apt.yaml)
- [shellcheck](vars/apt.yaml)
- [sqlite3](vars/apt.yaml)
- [sqlmap](vars/apt.yaml)
- [sslscan](vars/apt.yaml)
- [terminator](vars/apt.yaml)
- [wafw00f](vars/apt.yaml)
- [wfuzz](vars/apt.yaml)
- [whatweb](vars/apt.yaml)
- [whois](vars/apt.yaml)

### Git

- chisel
- ligolo-ng
- nishang
- PEASS-ng
- seclists
- trufflehog

### GoLang

- croc
- httpx
- katana
- naabu

### Python/Pipx

- arjun
- git-dumper
- netexec

### Cargo/Rust

- feroxbuster
