
# MacPorts Installer addition on 2010-12-10_at_09:05:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# /usr/local/bin should also be part of PATH:
export PATH=/usr/local/bin:$PATH

# openCollabNet Subversion package (includes JavaHL)
export PATH=/opt/subversion/bin:$PATH

# using the MAMP php CLI, instead of the default Mac php
export PATH=/Applications/MAMP/bin/php5.2/bin/:$PATH

# using Flash Player from the command-line
export PATH=/Applications/Adobe\ Flash\ Builder\ 4.5/player/mac/10.2/Flash\ Player\ Debugger.app/Contents/MacOS:$PATH

# using Adobe Desktop Launcher from the command-line
export PATH=/Applications/Adobe\ Flash\ Builder\ 4.5/sdks/4.5.0/bin:$PATH

# Java home
export JAVA_HOME=/Library/Java/Home

# increase the maven heap
export MAVEN_OPTS=-Xmx1024m

# colorize the terminal
export CLICOLOR=1;
