
# MacPorts Installer addition on 2010-12-10_at_09:05:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# /usr/local/bin should also be part of PATH:
export PATH=/usr/local/bin:$PATH

# openCollabNet Subversion package (includes JavaHL)
export PATH=/opt/subversion/bin:$PATH

# using the MAMP php CLI, instead of the default Mac php
export PATH=/Applications/MAMP/bin/php5.2/bin:$PATH

# using Flash Player from the command-line
export PATH=/Applications/Adobe\ Flash\ Builder\ 4.5/player/mac/10.2/Flash\ Player\ Debugger.app/Contents/MacOS:$PATH

# using Adobe Desktop Launcher from the command-line
export PATH=/Applications/Adobe\ Flash\ Builder\ 4.5/sdks/4.5.0/bin:$PATH

# add Elastic MapReduce CLI tools:
export PATH=/Users/vtsvetkov/Applications/elastic-mapreduce-ruby:$PATH

# add S3cmd command line tools:
export PATH=/Users/vtsvetkov/Applications/s3cmd-1.1.0-beta3:$PATH

# add the Rivinet command line tools:
export PATH=/Users/vtsvetkov/git/rivinet/map-reduce/src/main/bash:$PATH

# Java home
export JAVA_HOME=/Library/Java/Home

# increase the maven heap
export MAVEN_OPTS="-Xms512m -Xmx1536m -XX:MaxPermSize=512m"

# colorize the terminal
export CLICOLOR=1;
export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# open files in one instance of MacVim
alias rvim='mvim --remote-silent '

# set scala home
export SCALA_HOME=/usr/local/bin/scala

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Use bash-completion, if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

