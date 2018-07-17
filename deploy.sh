#!/bin/bash

EMACSD=~/.emacs.d
LISP=$EMACSD/lisp;

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d &&

    mkdir -p $LISP &&

    cp -fv .spacemacs ~/ &&

    git clone https://github.com/mciocchi/spacemacs-conf $LISP"/conf" &&

    git clone https://github.com/mciocchi/cyanide.git $LISP"/cyanide" &&

    git clone https://github.com/mciocchi/cyanide-treemacs-view $LISP"/cyanide-treemacs-view" &&

    git clone https://github.com/mciocchi/cyanide-org-integration $LISP"/cyanide-org-integration" &&

    git clone https://github.com/mciocchi/cyanide-shell-view $LISP"/cyanide-shell-view" &&

    nohup emacs >> /dev/null &
