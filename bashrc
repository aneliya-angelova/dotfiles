PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# init rbenv:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
