PS1="\[\e[0;32m\]\$(date +%Y/%m/%d_%H:%M:%S) : \w\n\[\e[0;34m\]\$(__git_ps1)\[\e[00m\]\$ "

#
# git-completion.bash / git-prompt.sh
#
if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
    source /usr/local/git/contrib/completion/git-prompt.sh
fi
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    source /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
