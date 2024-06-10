#!/bin/sh

mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/ftdetect

cp ./syntax.vim ~/.vim/syntax/urcl.vim
cp ./detect.vim ~/.vim/ftdetect/urcl.vim
