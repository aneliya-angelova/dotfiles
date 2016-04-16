> **NOTE:** My *dotfiles*-project is an attempt to follow the suberb instructions provided by [VIM CASTS.org][vimcasts]

## Installation Overview 


#### Setup GitHub SSH Keys:

    cd ~/.ssh
    ssh-keygen -t rsa -b 4096 -C "aneliya.angelova@gmail.com"
    ssh-add id_rsa
    clip < id_rsa.pub

Paste the public key to the GitHub SSH settings.

#### Installation:

    git clone git://github.com/aneliya-angelova/dotfiles.git

Create the symlinks:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vim ~/.vim

#### Update VIM plugins:

    cd ~/dotfiles
    git submodule init
    git submodule update

Happy Vim-ing!

[vimcasts]:http://vimcasts.org/
