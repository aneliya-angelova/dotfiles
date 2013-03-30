> **NOTE:** My *dotfiles*-project is an attempt to follow the suberb instructions provided by [VIM CASTS.org][vimcasts]

## Installation Overview ##

**Installation:**

    git clone git://github.com/npacemo/dotfiles.git

**Create symlinks:**

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/profile ~/.profile
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/sbtconfig ~/.sbtconfig

## Detailed Instructions ##

Sometimes I use the same setup on staging and production environments, where sometimes I would need to do a quick fix in production.

Having a consistent development environment makes the work much more straight-forward.

If you're running an **Ubuntu Server** in production you need to do the following:

#### 1. Clone this repo. ####

    git clone git://github.com/npacemo/dotfiles.git

#### 2. Add the following lines to the bottom of *~/.profile*: ####

    # colorize the terminal
    export CLICOLOR=1;
    export TERM="xterm-256color"

#### 3. Create the symbolic links for the VIM configuration: ####

    ln -s /home/vtsvetkov/dotfiles/vimrc ~/.vimrc
    ln -s /home/vtsvetkov/dotfiles/vim ~/.vim

#### 4. Update VIM plugins: ####

    cd /home/vtsvetkov/dotfiles
    git submodule init
    git submodule update

#### 5. Build *command-T* plugin: ####

    sudo apt-get install vim-nox ruby1.8-full rubygems1.8 ruby-bundler libxslt-dev libxml2-dev rake
    cd /home/vtsvetkov/dotfiles/vim/bundle/command-t/
    sudo bundle install
    rake make

#### 6. Select back the *Oracle JDK* as a default java ####

    sudo update-alternatives --config java
    
    There are 2 choices for the alternative java (providing /usr/bin/java).
    
      Selection    Path                                            Priority   Status
    ------------------------------------------------------------
    * 0            /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java   1061      auto mode
      1            /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java   1061      manual mode
      2            /usr/lib/jvm/jdk1.6.0_31/bin/java                1         manual mode
    
    Press enter to keep the current choice[*], or type selection number: 2
    update-alternatives: using /usr/lib/jvm/jdk1.6.0_31/bin/java to provide /usr/bin/java (java) in manual mode.

#### Happy Vim-ing! ####

[vimcasts]:http://vimcasts.org/
