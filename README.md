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

1. `git clone https://github.com/netpoetica/dotvim.git`
2. `cd dotvim`
3. `git submodule init`
4. `git submodule update`
5. Backup any existing VIM configuration
6. `./install`

Note: install script will create a ~/.vim/swaps and ~/.vim/backups dir (if they dont exist) in order to keep swap files centralized.
