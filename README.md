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

## Tools List (Sorted by installation method)

### [Apt](vars/apt.yaml)

- aha
  - ANSI color to HTML converter
- bash-completion
  - programmable completion for the bash shell
- bind9-host
  - DNS Lookup Utility
 DNS Lookup Utility
- build-essential
  - Informational list of build-essential packages
- csvkit
  - command-line tools for working with CSV
- ffuf
  - Fast web fuzzer written in Go (program)
- gcp
  - advanced command line file copy system
- git
  - fast, scalable, distributed revision control system
 fast, scalable, distributed revision control system
- grepcidr
  - Filter IP addresses matching IPv4/IPv6 CIDR/network specification
- hashid
  - Identify the different types of hashes used to encrypt data
- jq
  - lightweight and flexible command-line JSON processor
 lightweight and flexible command-line JSON processor
- jython
  - Python seamlessly integrated with Java
- libfuse3-3
  - Filesystem in Userspace (library) (3.x version)
- libpcap-dev
  - development library for libpcap (transitional package)
 development library for libpcap (transitional package)
- locate
  - maintain and query an index of a directory tree
- lolcat
  - colorful `cat`
- make
  - utility for directing compilation
- mtr-tiny
  - Full screen ncurses traceroute tool
- ncat
  - NMAP netcat reimplementation
 NMAP netcat reimplementation
- nmap
  - The Network Mapper
 The Network Mapper
- pipx
  - execute binaries from Python packages in isolated environments
- python3
  - interactive high-level object-oriented language (default python3 version)
 interactive high-level object-oriented language (default python3 version)
 interactive high-level object-oriented language (default python3 version)
- python3-dev
  - header files and a static library for Python (default)
 header files and a static library for Python (default)
 header files and a static library for Python (default)
- python3-venv
  - venv module for python3 (default python3 version)
 venv module for python3 (default python3 version)
 venv module for python3 (default python3 version)
- qemu-guest-agent
  - Guest-side qemu-system agent
 Guest-side qemu-system agent
- shellcheck
  - lint tool for shell scripts
- spice-vdagent
  - Spice agent for Linux
- sqlite3
  - Command line interface for SQLite 3
 Command line interface for SQLite 3
- sqlmap
  - automatic SQL injection tool
- sslscan
  - Tests SSL/TLS enabled services to discover supported cipher suites
- terminator
  - multiple GNOME terminals in one window
- wafw00f
  - identify and fingerprint Web Application Firewall products
- wfuzz
  - Web application bruteforcer
- whatweb
  - Next generation web scanner
- whois
  - intelligent WHOIS client

### [Git](vars/git.yaml)

- chisel
  - A fast TCP/UDP tunnel over HTTP
- ligolo-ng
  - An advanced, yet simple, tunneling/pivoting tool that uses a TUN interface.
- nishang
  - Nishang - Offensive PowerShell for red team, penetration testing and offensive security.
- PEASS-ng
  - PEASS - Privilege Escalation Awesome Scripts SUITE (with colors)
- SecLists
  - SecLists is the security tester's companion. It's a collection of multiple types of lists used during security assessments, collected in one place. List types include usernames, passwords, URLs, sensitive data patterns, fuzzing payloads, web shells, and many more.
- trufflehog
  - Find, verify, and analyze leaked credentials

### [GoLang](vars/golang.yaml)

- croc
  - Easily and securely send things from one computer to another :crocodile: :package:
- httpx
  - httpx is a fast and multi-purpose HTTP toolkit that allows running multiple probes using the retryablehttp library.
- katana
  - A next-generation crawling and spidering framework.
- naabu
  - A fast port scanner written in go with a focus on reliability and simplicity. Designed to be used in combination with other tools for attack surface discovery in bug bounties and pentests

### [Python/Pipx](vars/python.yaml)

- arjun
  - HTTP parameter discovery suite
- git-dumper
  - A tool to dump a git repository from a website
- NetExec
  - The Network Execution Tool

### Cargo/Rust

- feroxbuster
