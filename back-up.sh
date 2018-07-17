#!/bin/bash

EMACSD=~/.emacs.d
SPACEMACS=~/.spacemacs;
DATE=$(date +"%Y-%m-%d_%H-%M-%S");
BACKUPS=backups;
mkdir -p $BACKUPS/$DATE;

cp -rL $EMACSD $SPACEMACS $BACKUPS/$DATE;

cd $BACKUPS;

tar -czf $DATE.tar.gz $DATE;

rm -rf $DATE;

echo "backup finished";
