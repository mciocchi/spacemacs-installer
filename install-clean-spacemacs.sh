#!/bin/bash

EMACSD=~/.emacs.d
LISP=$EMACSD/lisp;

sh back-up.sh &&

    rm -rf ~/.emacs.d ~/.spacemacs &&

    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d &&

    echo "clean install complete";
