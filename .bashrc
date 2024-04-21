# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH=/usr/local/cuda-11.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH
export PS1="\[\e[30;47m\][\u@\h \w\[\e[30;47m\]]\[\e[0m\] \[\e[34m\](bash)\[\e[0m\] \$ "
export GIT_SSH_COMMAND="ssh -i /home/eric/.ssh/lab"

alias la='ls -a'
alias ll='ls -lh'
alias lla='ls -lha'
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/eric/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/eric/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/eric/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/eric/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Automatically start ssh-agent 
SSH_AGENT_PID=`pgrep -U $USER -o 'ssh-agent'`
if [ -z $SSH_AGENT_PID ]; then
    eval $(ssh-agent -s)
    # ssh-add ~/.ssh/id_rsa
else
    # if ssh-agent already executing, then use the use the existing one
    SSH_AGENT_SOCK=`find /tmp -user $USER -path '*ssh*' -type s -iname 'agent.'$(($SSH_AGENT_PID-1)) 2>/dev/null`
    export SSH_AGENT_PID="$SSH_AGENT_PID"
    export SSH_AUTH_SOCK="$SSH_AGENT_SOCK"
fi

alias ccc='g++ --std=c++14 -Wall -Wfatal-errors -Wextra'
