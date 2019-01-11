#!/bin/bash

EMACSD=~/.emacs.d

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d &&

    cp -fv .spacemacs ~/ &&

    nohup emacs >> /dev/null &
