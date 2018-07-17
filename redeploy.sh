#!/bin/bash

EMACSD=~/.emacs.d
LISP=$EMACSD/lisp;

sh back-up.sh &&

    rm -rf ~/.emacs.d/ ~/.spacemacs &&

    sh deploy.sh &&

    echo "Redeploy complete";
