# Makefile
# Author: @mrcalderon
#
# Used to install dotfiles automagically.
#
# Note: only .vimrc is currently supported at this time.

.PHONY: all
all: dotfiles

# Installs the dotfiles
.PHONY: dotfiles
dotfiles: 
	# add symlinks to dotfiles
	# ln -snf $(CURDIR)/vimrc $(HOME)/.vimrc;

	# copy dotfiles to homedir
	cp -if $(CURDIR)/vimrc $(HOME)/.vimrc;
