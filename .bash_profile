# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


#if [ -z "$SSH_AUTH_SOCK" ] ; then
#  eval `ssh-agent`
#fi


## Automatically start ssh-agent
#SSH_AGENT_PID=`pgrep -U $USER -o 'ssh-agent'`
#if [ -z $SSH_AGENT_PID ]; then
#    eval $(ssh-agent bash)
#    #ssh-add ~/.ssh/lab
#    exit
#else
#    # if ssh-agent already executing, then use the use the existing one
#    SSH_AGENT_SOCK=`find /tmp -user $USER -path '*ssh*' -type s -iname 'agent.'$(($SSH_AGENT_PID-1)) 2>/dev/null`
#    export SSH_AGENT_PID="$SSH_AGENT_PID"
#    export SSH_AUTH_SOCK="$SSH_AGENT_SOCK"
#fi
