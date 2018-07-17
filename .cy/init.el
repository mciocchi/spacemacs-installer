(cyanide-project :id 'spacemacs-installer
                 :display-name "spacemacs-installer"
                 :default-view 'cyanide-treemacs-view
                 :tasks '(deploy
                          redeploy
                          undeploy
                          back-up
                          install-clean-spacemacs
                          hot-swap-config))

(cyanide-task :id 'deploy
              :display-name "deploy"
              :func (lambda ()
                      (interactive)
                      (cd-proj-root)
                      (async-shell-command "sh deploy.sh"))
              :description
              "Deploy custom spacemacs dotfile, and its dependencies.")

(cyanide-task :id 'redeploy
              :display-name "redeploy"
              :func (lambda ()
                      (interactive)
                      (cd-proj-root)
                      (async-shell-command "sh redeploy.sh"))
              :description
              "back up before removing dot emacs files and then deploying them again.")

(cyanide-task :id 'undeploy
              :display-name "undeploy"
              :func (lambda ()
                      (interactive)
                      (cd-proj-root)
                      (async-shell-command "sh undeploy.sh"))
              :description
              "Copy relevant dot emacs files from home back into
              spacemacs-installer directory.")

(cyanide-task :id 'back-up
              :display-name "back-up"
              :func (lambda ()
                      (interactive)
                      (cd-proj-root)
                      (async-shell-command "sh back-up.sh"))
              :description
              "back up .emacs.d and .spacemacs")

(cyanide-task :id 'install-clean-spacemacs
              :display-name "install-clean-spacemacs"
              :func (lambda ()
                      (interactive)
                      (cd-proj-root)
                      (async-shell-command "sh install-clean-spacemacs.sh"))
              :description
              "back up, and then install a brand new .emacs.d and .spacemacs")

(cyanide-task :id 'hot-swap-config
              :display-name "hot-swap-config"
              :func (lambda ()
                      (interactive)
                      (cd-proj-root)
                      (async-shell-command "sh hot-swap-config.sh"))
              :description
              "back up, and then overwrite ~/.spacemacs with our copy")

