[ -f ~/.bashrc ] && source ~/.bashrc

export PATH=/sbin:/usr/sbin:$PATH
[ -d ~/bin ] && export PATH=~/bin:$PATH

# Source alises
for p in ~/.bash/profiles/* ; do
    . $p
done

##
# Your previous /Users/mwoodworth/.bash_profile file was backed up as /Users/mwoodworth/.bash_profile.macports-saved_2012-03-02_at_23:49:21
##

# MacPorts Installer addition on 2012-03-02_at_23:49:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
