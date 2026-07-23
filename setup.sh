#!/bin/bash
set -e

unset TRACE
unset DEBUG
# DEBUG=true
# TRACE=true

if [ ! -z ${TRACE+x} ]; then
	set -x
fi

# Colors
end="\033[0m"
black="\033[0;30m"
blackb="\033[1;30m"
white="\033[0;37m"
whiteb="\033[1;37m"
red="\033[0;31m"
redb="\033[1;31m"
green="\033[0;32m"
greenb="\033[1;32m"
yellow="\033[0;33m"
yellowb="\033[1;33m"
blue="\033[0;34m"
blueb="\033[1;34m"
purple="\033[0;35m"
purpleb="\033[1;35m"
lightblue="\033[0;36m"
lightblueb="\033[1;36m"

function print_header {
  echo ""
	echo -e "=====$1====="
}

function log_debug {
	if [ ! -z "${DEBUG+x}" ]; then
		echo -e "DEBUG:"
		echo -e "$1"
	fi
}

function log_info {
	echo -n "$1"
}

function log_task {
	echo -n "$1: "
}

function log_success {
	local msg=${1:-"SUCCESS"}
	echo -e "${green}${msg}${end}"
}

function log_failure {
	local msg=${1:-"FAILED"}
	echo -e "${red}${msg}${end}"
}

function log_warn {
	echo -e "${yellow}${1}${end}"
}

function error {
	log_failure
	echo -e "${red}ERROR: $1${end}"
	echo -e "${red}Exit Code: $2${end}"
	echo -e "${red}${3}${end}"
	exit "$2"
}

print_header "APT Updates"

log_task "Running apt update"
output=$(sudo apt-get update -y 2>&1) || error "Unable to complete apt update" "$?" "$output"
log_success

log_task "Install APT Packages"
output=$(sudo apt-get install -y python3 python3-dev python3-venv jq 2>&1) || error "Unable to complete apt install" "$?" "$output"
log_success

print_header "Install Pipx"
log_task "Attempt pipx install"

if ! output="$(python3 -m pip install -U pipx 2>&1)" ; then
  log_failure
  
  log_task "Attempting pipx install with --break-system-packages"
	output=$(python3 -m pip install pipx -U --break-system-packages 2>&1) || error "Unable to install pipx" "$?" "$output"
	
fi
log_success

# Export pipx path.
export PATH="$PATH:$HOME/.local/bin" || error "Unable export pipx path" "$?" ""

log_task "Attempting pipx ensurepath"
output=$(pipx ensurepath 2>&1) || error "Unable run pipx ensurepath" "$?" "$output"
log_success

print_header "Install Ansible"
log_task "Installing ansible"
output=$(pipx install --include-deps ansible 2>&1) || error "Unable install ansible" "$?" "$output"
log_success

log_task "Installing additional libraries"
output=$(pipx inject ansible ansible-lint --include-deps 2>&1) || error "Unable inject additional libraries" "$?" "$output"
log_success

log_task "Check for pipx updates"
output=$(pipx upgrade ansible --include-injected 2>&1) || error "Unable upgrade ansible pipx environment" "$?" "$output"
log_success

log_task "Install ansible-galaxy collections"
output=$(ansible-galaxy collection install -U -r requirements.yaml 2>&1) || error "Unable install galaxy collections" "$?" "$output"
log_success

log_task "Install ansible-galaxy roles"
output=$(ansible-galaxy role install -U -r requirements.yaml 2>&1) || error "Unable install galaxy roles" "$?" "$output"
log_success

log_task "Install ansible-galaxy roles"
output=$(ansible-galaxy role install git+https://github.com/DesBlock/ansible-install-role 2>&1) || error "Unable to install galaxy roles" "$?" "$output"
log_success

echo ""
log_success "SETUP COMPLETE"
