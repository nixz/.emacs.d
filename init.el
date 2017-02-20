(message "(init ")
;; -------------------------------------------------------------------load-path
(add-to-list 'load-path "~/.emacs.d/elisp") ; elisp
(add-to-list 'load-path "~/.emacs.d/elisp/simple-call-tree-ext") ; simple-call-tree+
(add-to-list 'load-path "~/.emacs.d/elisp/kde-emacs") ; elisp/kde-emacs
(add-to-list 'load-path "~/.emacs.d/elisp/git-emacs") ; elisp/git-emac
;; (add-to-list 'load-path "~/.emacs.d/elisp/slime") ; elisp/slime
;; (add-to-list 'load-path "~/.emacs.d/elisp/slime/contrib") ; elisp/slime
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-clang-complete-async/") ; elisp/cland-auto-complete
(add-to-list 'load-path "~/.emacs.d/elisp/sublimity")


(setq load-prefer-newer t)
(package-initialize)
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

;; ---------------------------------------------------------------------require
(require 'cl-lib)
(require 'cmake-mode)                   ; cmake
(require 'kde-emacs)                    ; kde-emacs
;; (require 'simple-call-tree)             ; simple-call-tree
;; (require 'simple-call-tree+)            ; simple-call-tree+
(require 'eassist  "~/.emacs.d/elpa/cedet/contrib/eassist.el")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/yasnippet-snippets"                 ;; Andrea Crotti snippets
        "~/.emacs.d/personal-snippets"                  ;; personal snippets
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.

(require 'git-emacs)
(require 'slime-autoloads)
(require 'sublimity-map)
;;; ---------------------------------------------------------------------- latex
(require 'tex-site)
(setenv "PATH" (concat "/usr/texbin:/usr/local/bin:" (getenv "PATH")))
;; (setenv "LD_LIBRARY_PATH" (concat "/usr/local/lib:" (getenv "LD_LIBRARY_PATH")))
;; (setenv "DYLD_LIBRARY_PATH" (concat "/usr/local/lib:" (getenv "DYLD_LIBRARY_PATH")))
(setq exec-path (append '("/usr/texbin" "/usr/local/bin") exec-path))
(load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
(latex-preview-pane-enable)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq TeX-PDF-mode t)                  ; To compile to pdf by default
;; ALTERNATIVE
;; (require 'tex)
;; (TeX-global-PDF-mode t)
;; ---------------------------------------------------------------file-template
(require 'file-template)
(autoload 'file-template-find-file-not-found-hook "file-template" nil t)
(add-hook 'find-file-not-found-hooks 'file-template-find-file-not-found-hook 'append)

;;; ----------------------------------------------------------------------slime
(setq inferior-lisp-program "/usr/bin/sbcl")
;; (setq inferior-lisp-program "/home/nikhil/modules/clasp/build/clasp/Contents/execs/boehm/release/bin/clasp")
(setq slime-contribs '(slime-fancy))

;; To start slime in single threaded mode for cepl
(defun slime-style-init-command (port-filename _coding-system extra-args)
  "Return a string to initialize Lisp."
  (let ((loader (if (file-name-absolute-p slime-backend)
                    slime-backend
                  (concat slime-path slime-backend))))
    ;; Return a single form to avoid problems with buffered input.
    (format "%S\n\n"
            `(progn
               (load ,(slime-to-lisp-filename (expand-file-name loader))
                     :verbose t)
               (funcall (read-from-string "swank-loader:init"))
               (funcall (read-from-string "swank:start-server")
                        ,(slime-to-lisp-filename port-filename)
            ,@extra-args)))))

;; To start slime in single threaded mode for cepl
(defun slime-style (&optional style)
  (interactive
   (list (intern-soft (read-from-minibuffer "Style: " "nil"))))
  (lexical-let ((style style))
    (slime-start
     :init (lambda (x y)
         (slime-style-init-command
          x y `(:style ,style :dont-close t))))))

;; -----------------------------------------------------------------------hooks

;; .................................................Compilation-finish-function
;; (setq compilation-finish-function
;;       (lambda (buf str)
;;         (if (string-match "exited abnormally" str)
;;             (message "compilation errors, M-n to visit")
;;           (message "No compilation errors!"))))           ; no errors
          ;; (run-at-time 1.5 nil 'delete-windows-on buf)))) ; window go
          ;;                                                 ; away after
          ;;                                                 ; 1.5 sec
;; ..........................................................c-mode-common-hook
(defun my-c-mode-common-hook ()
   (define-key c-mode-base-map (kbd "C-o") 'eassist-switch-h-cpp)
   (define-key c-mode-base-map (kbd "M-m") 'eassist-list-methods))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
;; ;; ............................................................python-mode-hook
;; (defun my-python-mode-hook ()
;;   (define-key python-mode-map (kbd "A-m") 'eassist-list-methods))
;; (add-hook 'python-mode-hook 'my-python-mode-hook)
;; ;; ..............................................................lisp-mode-hook
;; (define-key lisp-mode-shared-map (kbd "A-m") 'eassist-list-methods)

;; -------------------------------------------------------------auto-mode-alist
;; setting auto-mode-alist for various modes
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode)) ; cmake
(add-to-list 'auto-mode-alist '("\\.cmake\\'" . cmake-mode)) ; cmake

;; -----------------------------------------------------------------keybindings
;; Setting global key bindings
(global-set-key "\C-\M-B" 'compile)     ; C-M-B => compile
(global-set-key "\M-n" 'next-error)     ; M-n => next-error
(global-set-key "\C-c-\C-t" 'multi-term) ; C-c-C-t => multi-term
(global-set-key "\C-\M-g" 'magit-status) ; C-M-g => magit-status
(global-set-key "\M-RET" 'agulbra-make-member) ;M-RET => make a new
                                               ;member of this class
                                               ;type
(global-set-key (kbd "C-c S") 'simple-call-tree-display-buffer) ;simple-call-tree
;; ........................................................................i-do
;; This tab override shouldn't be necessary given ido's default
;; configuration, but minibuffer-complete otherwise dominates the
;; tab binding because of my custom tab-completion-everywhere
;; configuration.
(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map [tab] 'ido-complete)))

;; ------------------------------------------------------------------------misc
(shell-command (concat "source ~/.bashrc")) ; source bash
(defalias 'yes-or-no-p 'y-or-n-p)       ; use y/n instead of yes/no

;; --------------------------------------------------------------------vtk-style
;; ken-moreland's vtk style
;; (c-add-style "vtk"
;;          '("stroustrup"
;;            (c-basic-offset . 2)
;;            (indent-tabs-mode . nil)
;;            (c-offsets-alist
;;         (block-open . +)
;;         (block-close . 0)
;;         (substatement . +)
;;         (substatement-open . +)
;;         (statement-block-intro . 0))))

;; ---------------------------------------------------------------------paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook           (lambda () (paredit-mode +1)))
(add-hook 'slime-repl-mode-hook       (lambda () (paredit-mode +1)))
;; Stop SLIME's REPL from grabbing DEL, which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

;; -------------------------------------------------------------smart-tabs-mode
(autoload 'smart-tabs-mode "smart-tabs-mode"
  "Intelligently indent with tabs, align with spaces!")
(autoload 'smart-tabs-mode-enable "smart-tabs-mode")
(autoload 'smart-tabs-advice "smart-tabs-mode")
;; (smart-tabs-insinuate 'c 'javascript 'cperl 'python 'ruby) ; Load all
;;                                                            ; the
;;                                                            ; following
;;                                                            ; in one
;;                                                            ; pass
;; .......................................................................C/C++
(add-hook 'c-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice c-indent-line c-basic-offset)
(smart-tabs-advice c-indent-region c-basic-offset)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)) ; set *.h as c++ mode
(add-to-list 'auto-mode-alist '("\\.worklet\\'" . c++-mode)) ; set
                                                             ; *.worklet
                                                             ; as c++
                                                             ; mode

;; ..................................................................JavaScript
;; (add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
;; (smart-tabs-advice js2-indent-line js2-basic-offset)
;; ;; ...........................................................Perl (cperl-mode)
;; (add-hook 'cperl-mode-hook 'smart-tabs-mode-enable)
;; (smart-tabs-advice cperl-indent-line cperl-indent-level)
;; ......................................................................Python
(add-hook 'python-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice python-indent-line-1 python-indent)
;; ;; ........................................................................Ruby
;; (add-hook 'ruby-mode-hook 'smart-tabs-mode-enable)
;; (smart-tabs-advice ruby-indent-line ruby-indent-level)

;; ------------------------------------------------------- clang-complete-async
;; (require 'auto-complete-clang-async)

;; (defun ac-cc-mode-setup ()
;;  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
;;  (setq ac-sources '(ac-source-clang-async))
;;  (ac-clang-launch-completion-process)
;; )

;; (defun my-ac-config ()
;;   (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;;   (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;;   (global-auto-complete-mode t))

;(my-ac-config)

;; ----------------------------------------------------------------------------
;; (sublimity-global-mode)
(load-theme 'monokai)
(require 'git-gutter-fringe)
(setq git-gutter-fr:side 'right-fringe)

;; ----------------------------------------------------------------------------
;; default fullscreen without toolbar
;; (ns-toggle-toolbar)
(set-frame-parameter nil 'fullscreen 'fullboth)

(defadvice yes-or-no-p (around prevent-dialog activate)
  "Prevent yes-or-no-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))

(defadvice y-or-n-p (around prevent-dialog-yorn activate)
  "Prevent y-or-n-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))

;;; ---------------------------------------------------------------------------0

(set-frame-parameter (selected-frame) 'alpha '(85 85))

(add-to-list 'default-frame-alist '(alpha 85 85))

;; (set-face-attribute 'default nil :background "black"
;;   :foreground "white" :font "Courier" :height 180)
;;; ----------------------------------------------------------------------------
;; To Open Very Large Files
(require 'vlf-setup)
(message ") ")
