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

if [ -z "$LD_LIBRARY_PATH" ]; then
    export LD_LIBRARY_PATH="/usr/local/cuda-11.6/lib64"
else
    export LD_LIBRARY_PATH="/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH"
fi

#export LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH

export PS1="\[\e[30;47m\][\u@\h \w\[\e[30;47m\]]\[\e[0m\] \[\e[34m\](bash)\[\e[0m\] \$ "
export GIT_SSH_COMMAND="ssh -i /home/eric/.ssh/lab"

# User specific aliases and functions
alias la='ls -a'
alias ll='ls -lh'
alias lla='ls -lha'
alias ccc='g++ --std=c++17 -Wall -Wfatal-errors -Wextra'

# Bash only checks the first word of a command for an alias, any words after that are not checked.
# We can tell bash to check the next word after the alias (i.e sudo) by adding a space to the end of the alias value.
alias sudo='sudo '

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


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


# Automatically starts ssh-agent, and reuse the previously running agent.
SSH_AGENT_PID=`pgrep -U $USER -o 'ssh-agent'`
if [ -z $SSH_AGENT_PID ]; then
    eval $(ssh-agent) # creates a ssh-agent process, and executes the output of ssh-agnet, storing the information of keys in memory (in current shell).
    # ssh-agent bash # starts a new Bash shell, and sets up the environment for agent.
    ssh-add ~/.ssh/lab     # add ~/.ssh/lab into agent manually, so that every agent got this key in it.
    #exit
else
    # if ssh-agent already executing, then use the use the existing one
    SSH_AGENT_SOCK=`find /tmp -user $USER -path '*ssh*' -type s -iname 'agent.'$(($SSH_AGENT_PID-1)) 2>/dev/null` # redirects stderr (the purpose of 2>) to the null device, effectively silencing any error output.
    export SSH_AGENT_PID="$SSH_AGENT_PID"
    export SSH_AUTH_SOCK="$SSH_AGENT_SOCK"
    # 2>/dev/null: A special device file in Unix-like systems that discards all data written to it.
    # This redirects any error messages generated by find to /dev/null, effectively suppressing them. 
    # This prevents error messages about permission denied or other issues from being displayed to the user.
fi

