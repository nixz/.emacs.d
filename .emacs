(require 'cl-lib)
(shell-command (concat "source ~/.bashrc")) ; set the environment variable

(add-hook 'after-init-hook                  ; load the real init file init.el
          (lambda () 
            (load "~/.emacs.d/init.el"))) 

(setq custom-file "~/.emacs.d/custom.el")   ; put all the emacs customizations into custom.el
(load custom-file)                          ; load all the customizations

