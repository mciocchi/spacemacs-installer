#!/bin/bash

sh back-up.sh &&

    cp -fv .spacemacs ~/ &&

    echo "hot-swap complete";
