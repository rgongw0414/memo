# This script is for .cshrc. 
# Put this script in ~/bin/

# %B BOLD TEXT %b
# %~ %d: pwd
# %c: pwd w/o prefix
# %n: username, %m: hostname

setenv GIT_BRANCH_CMD "sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'"
#setenv GIT_BRANCH_CMD "sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'"

# set prompt="%m:%~ `$GIT_BRANCH_CMD`%B%#%b "
# set prompt="%%[%n@%m %c `$GIT_BRANCH_CMD`]%# "
#set prompt="[%n@%m %~ %{\e[34;1m%}`$GIT_BRANCH_CMD`%{\e[0m%}] %B%#%b "
set prompt="%{\e[30;47m%}[%n@%m %~ %{\e[34;47m%}`$GIT_BRANCH_CMD`%{\e[30;47m%}]%{\e[0m%} (csh) %B%#%b%{\e[0m%} "

#export PS1="\[\e[30;47m\][\u@\h \w\[\e[30;47m\]]\[\e[0m\] \[\e[34m\](bash)\[\e[0m\] \$ " 
#set prompt="%{\e[30;47m%}[%n@%m %~ %{\e[34;1m%}`$GIT_BRANCH_CMD`%{\e[30;47m%}]%B %#%b %{\e[30;0m%}"
