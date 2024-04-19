alias ls 'ls --color=auto'
alias la ls -a
alias ll ls -lh
alias lla ls -lha
alias here 'nautilus . &'
alias ccc 'g++ --std=c++11 -Wall -Wfatal-errors -Wextra'

setenv PATH /usr/local/cuda-11.6/bin:${PATH}
setenv EDITOR vim
if (${?LD_LIBRARY_PATH} == 0) then
   setenv LD_LIBRARY_PATH  /usr/local/cuda-11.6/lib64
else
   setenv LD_LIBRARY_PATH /usr/local/cuda-11.6/lib64:${LD_LIBRARY_PATH}
endif

#if (${?DISPLAY} == 0) then
#   setenv DISPLAY  localhost:10.0
#endif

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#if ( -f "/home/vlsi/anaconda3/etc/profile.d/conda.csh" ) then
#    source "/home/vlsi/anaconda3/etc/profile.d/conda.csh"
#else
#    setenv PATH "/home/vlsi/anaconda3/bin:$PATH"
#endif
# <<< conda initialize <<<
alias precmd "source ~/bin/gitprompt.csh"

#setenv PATH ${PATH}:/var/lib/snapd/snap/bin
#source /cad/synopsys/CIC/verdi64.cshrc
#source /cad/synopsys/CIC/synthesis.cshrc
#source /cad/synopsys/CIC/lc.cshrc
#source /cad/cadence/CIC/xcelium.cshrc
#source /cad/cadence/CIC/innovus.cshrc
#figlet VLSI\/CAD LAB
