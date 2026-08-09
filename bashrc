# History settings: https://fedorsarafanov.github.io/it/bash-history/
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s histappend
HISTCONTROL=ignoredups:erasedups
# https://unix.stackexchange.com/a/48116 "After trying this for a bit, I've actually found that running only history -a, without -c and -r, is better usability-wise... commands you run are available instantly in new shells even before exiting the current shell, but not in concurrently running shells. This way Arrow-Up still always selects the last-run commands of the current session, which I find much less confusing"
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export COMP_KNOWN_HOSTS_WITH_HOSTFILE=""


# https://unix.stackexchange.com/a/125386
function mkcd() {
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}


export EDITOR=vim

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

export PS1='[\u@\h \W$(type __git_ps1 &>/dev/null && __git_ps1 " (%s)")]\$ '

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=gasp -Dsun.java2d.xrender=true"
#export _JAVA_OPTIONS="${_JAVA_OPTIONS} -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=3 -Dsun.java2d.uiScale=1.25"
#export _JAVA_OPTIONS="${_JAVA_OPTIONS} -Dswing.defaultlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel"
