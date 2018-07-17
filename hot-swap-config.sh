#!/bin/bash

sh back-up.sh &&

    rm -f ~/.spacemacs &&

    cp -fv .spacemacs ~/ &&

    echo "hot-swap complete";
