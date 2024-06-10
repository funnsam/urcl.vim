#!/bin/sh

mkdir -p ~/.config/nvim/syntax
mkdir -p ~/.config/nvim/ftdetect

cp ./syntax.vim ~/.config/nvim/syntax/urcl.vim
cp ./detect.vim ~/.config/nvim/ftdetect/urcl.vim
