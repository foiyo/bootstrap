# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

eval `ssh-agent`
ssh-add ~/.ssh/id_foiyo

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export CTRACE_PROGRAM=/finder/bin/xmfinder
