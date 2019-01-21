# spacemacs-installer

## dependencies

emacs 25 or higher

## usage

Before making changes, redeploy.sh will back up any pre-existing spacemacs
config to the spacemacs-installer/backups directory, but you may wish to make
your own manual backups first. Afterwards, from the spacemacs-installer
directory, run:

```bash
sh redeploy.sh
```

If you are deploying for the first time, run:

```bash
sh deploy.sh
```

If you are running your emacs instance with changes, and you wish to sync them
back to spacemacs-installer before committing them:

```bash
sh undeploy.sh
```

If you wish to revert your config file from the installer's version without
having to re-install all spacemacs dependences:

```bash
sh hot-swap-config.sh
```
