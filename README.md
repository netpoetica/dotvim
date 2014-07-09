dotvim
======

NOTE: make a backup of ~/.vimrc, ~/.vim, ~/.gvimrc etc. For example

```
mv ~/.vimrc ~/.vimrc.bkup
mv ~/.vim ~/.vim.bkup
mv ~/.gvimrc ~/.gvimrc.bkup
```

Installation
------------

1. `git clone https://github.com/proglottis/dotvim.git`
2. `cd dotvim`
3. `git submodule init`
4. `git submodule update`
5. Backup any existing VIM configuration
6. `./install`

Note: install script will create a ~/.vim/swaps and ~/.vim/backups dir (if they dont exist) in order to keep swap files centralized.

Note: after adding any new pathogen plugins, be sure to run :Helptags to generate help docs. See: http://usevim.com/2012/12/21/vim-101-help-tags/


Additional Deps
---------------
In order to use ctags with tagbar plugin, you'll also need to install the following:
```
brew install ctags-exuberant
// See: http://majutsushi.github.io/tagbar/

go get -u github.com/jstemmer/gotags
// See: https://github.com/jstemmer/gotags
```

Helpful Docs
------------
[Mapping Vim Keys](http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_3))
