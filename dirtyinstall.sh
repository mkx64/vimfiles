#!/bin/sh
printf "
 +-------------------------------------------------+
 |                                                 |
 |         Quick and dirty Vim Setup Tool          |
 |                                                 |
 |=================================================|
 |                                                 |
 |          Copyright (c) 2012, 2013, 2014         |
 |                                                 |
 |                Twitter                          |
 |              +-------------+                    |
 |              |             |                    |
 |          M E @ W A L I A L U . C O M            |
 |                |                   |            |
 |                +-------------------+            |
 |                   Web                           |
 |                                                 |
 +-------------------------------------------------+

"
cd ~
mkdir -p gitrepositories/walialu
git clone https://github.com/walialu/vimfiles gitrepositories/walialu/vimfiles
ln -s gitrepositories/walialu/vimfiles/.vim
ln -s gitrepositories/walialu/vimfiles/.vimrc
mkdir .vim/bundle
cd .vim/bundle
git clone https://github.com/gmarik/Vundle.vim
vim "+PluginInstall" "+qall"
# Hopefully this will fix the weird broken terminal
printf "\ec" #\e is ESC in bash
echo -en "\ec" #thanks @Jonathon Reinhart.