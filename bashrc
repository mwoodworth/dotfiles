# Source alises
for a in ~/.bash/aliases/* ; do
    . $a
done

# Shell options
shopt -s cmdhist
shopt -s histappend
shopt -s checkwinsize
export HISTFILESIZE=2000
export HISTSIZE=2000

# Bash completion file on OSX
if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

# Bash completion on Gentoo
if [ -f /etc/profile.d/bash-completion ]; then
	. /etc/profile.d/bash-completion
fi

# source custom completions
for c in ~/.bash/completion_scripts/* ; do
    . $c
done

# Set the window title
case $TERM in
	xterm*|rxvt*|Eterm)
		export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		;;
	screen)
		export PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac

# Set the prompt
if [ $(type -t __git_ps1) ]; then
	export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] - \w$(__git_ps1)\[\033[00m\]\n\$ '
else
	export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

export PATH="$PATH:/usr/local/nginx/sbin/:/Users/mwoodworth/bin/:/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin/"

export PYTHONPATH="/Users/mwoodworth/upverter/eda/:/Users/mwoodworth/upverter/eda/build/:/Users/mwoodworth/upverter/upconverter/schematic-file-converter/"
