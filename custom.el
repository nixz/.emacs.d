(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-interval 1)
 '(auto-save-default nil)
 '(auto-save-visited-file-name t)
 '(background-color "#002b36")
 '(background-mode dark)
 '(backup-inhibited t t)
 '(c-basic-offset 2)
 '(c-default-style
   (quote
    ((c-mode . "gnu")
     (c++-mode . "gnu")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(cursor-color "#839496")
 '(cursor-type (quote bar))
 '(custom-safe-themes
   (quote
    ("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "6df30cfb75df80e5808ac1557d5cc728746c8dbc9bc726de35b15180fa6e0ad9" "38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "57f8801351e8b7677923c9fe547f7e19f38c99b80d68c34da6fa9b94dc6d3297" "bd115791a5ac6058164193164fd1245ac9dc97207783eae036f0bfc9ad9670e0" "60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "73fe242ddbaf2b985689e6ec12e29fab2ecd59f765453ad0e93bc502e6e478d6" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "9c26d896b2668f212f39f5b0206c5e3f0ac301611ced8a6f74afe4ee9c7e6311" "0ebe0307942b6e159ab794f90a074935a18c3c688b526a2035d14db1214cf69c" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "91b5a381aa9b691429597c97ac56a300db02ca6c7285f24f6fe4ec1aa44a98c3" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" "29a4267a4ae1e8b06934fec2ee49472daebd45e1ee6a10d8ff747853f9a3e622" "f3ceb7a30f6501c1093bc8ffdf755fe5ddff3a85437deebf3ee8d7bed8991711" "86f4407f65d848ccdbbbf7384de75ba320d26ccecd719d50239f2c36bec18628" "9370aeac615012366188359cb05011aea721c73e1cb194798bc18576025cabeb" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(display-time-mode t)
 '(echo-keystrokes 0.01)
 '(ede-project-directories (quote ("/home/nikhil/modules/pv/0013365-huge-state-file")))
 '(egg-enable-tooltip t)
 '(fci-rule-color "#20240E")
 '(file-template-full-name "Nikhil Shetty")
 '(file-template-insert-automatically t)
 '(file-template-mapping-alist
   (quote
    (("^pq.*\\.h$" . "pq.h")
     ("^pq.*\\.cxx$" . "pq.cxx")
     ("^vtkVR.*\\.h$" . "pv.h")
     ("^vtkVR.*\\.cxx$" . "pv.cxx")
     ("^Test.*\\.cxx$" . "vtkTest.cxx")
     ("^vtk.*\\.h$" . "vtk.h")
     ("^vtk.*\\.cxx$" . "vtk.cxx")
     ("^vtk.*\\.cpp$" . "vtk.cxx")
     ("^vsg.*\\.h$" . "vsg.h")
     ("^vsg.*\\.cpp$" . "vsg.cpp")
     (".*\\.cpp" . "general.cxx")
     (".*\\.h" . "general.h")
     ("^package\\.lisp$" . "package.lisp")
     (".*\\.asd" . "header.asd")
     (".*\\.lisp" . "header.lisp")
     ("^CMakeLists\\.txt.*$" . "CMakeLists.txt"))))
 '(file-template-paths (quote ("~/.emacs.d/file-templates/")))
 '(fill-column 78)
 '(font-use-system-font t)
 '(foreground-color "#839496")
 '(frame-title-format (quote ("%f - " user-real-login-name "@" system-name)) t)
 '(gdb-many-windows nil)
 '(gdb-show-threads-by-default t)
 '(global-auto-revert-mode t)
 '(global-auto-revert-non-file-buffers t)
 '(global-company-mode t)
 '(global-ede-mode t)
 '(global-hungry-delete-mode t)
 '(global-srecode-minor-mode t)
 '(global-whitespace-mode nil)
 '(icomplete-mode t)
 '(ido-auto-merge-work-directories-length nil)
 '(ido-create-new-buffer (quote always))
 '(ido-enable-flex-matching t)
 '(ido-enable-prefix nil)
 '(ido-everywhere t)
 '(ido-ignore-extensions t)
 '(ido-max-prospects 8)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inferior-lisp-program "/usr/bin/sbcl" t)
 '(inhibit-startup-screen t)
 '(kde-c++-style "")
 '(kde-c-style "")
 '(kde-emacs-make "ninja")
 '(kde-emacs-newline-semicolon t)
 '(kde-email "nikhil.j.shetty@gmail.com")
 '(kde-full-name "Nikhil Shetty")
 '(linum-format "  %d  ")
 '(load-prefer-newer t)
 '(magit-auto-revert-mode nil)
 '(magit-use-overlays nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(minimap-dedicated-window t)
 '(minimap-window-location (quote right))
 '(org-agenda-files (quote ("~/Dropbox/Org/TODO.org")))
 '(org-directory "~/Dropbox/Org")
 '(org-latex-image-default-width "nil")
 '(org-latex-pdf-process
   (quote
    ("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f" "# pdflatex -interaction nonstopmode -output-directory %o %f" "# pdflatex -interaction nonstopmode -output-directory %o %f" "# pdflatex -interaction nonstopmode -output-directory %o %f" "latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f" "latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f")))
 '(org-mobile-directory "~/Dropbox/MobileOrg")
 '(org-mobile-inbox-for-pull "~/Dropbox/Org/from-mobile.org")
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "DONE(d!)" "WAIT(w@/!)" "CANCELED(c@)"))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(package-selected-packages
   (quote
    (better-defaults elpy pyde ipython ein org2issue github-browse-file github-clone github-issues github-notifier browse-at-remote zenburn-theme zenburn yasnippet yaml-mode vlf smex smart-tabs-mode slime sass-mode pysmell pymacs paredit org-pomodoro monokai-theme minimap markdown-mode magit-find-file less-css-mode latex-preview-pane latex-math-preview ido-ubiquitous git-gutter-fringe gist flymake flylisp flatland-theme find-file-in-project ess-R-data-view cpputils-cmake company-cmake cmake-project cmake-mode cmake-ide cedit bug-reference-github auto-complete-clang-async auto-complete-clang android-mode anaphora)))
 '(puppet-indent-level tab-width)
 '(read-file-name-completion-ignore-case t)
 '(recentf-max-saved-items 75)
 '(require-final-newline t)
 '(ruby-indent-level tab-width)
 '(safe-local-variable-values (quote ((Package . XML) (c-set-style "vtk"))))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(server-mode t)
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smooth-scroll-mode t)
 '(split-height-threshold nil)
 '(split-width-threshold 160)
 '(tab-width 2)
 '(term-default-bg-color nil)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil))
 ;; '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 105 :width normal))))
 '(magit-diff-add ((t (:foreground "green"))))
 '(magit-diff-del ((t (:foreground "red"))))
 '(minimap-active-region-background ((t (:background "black"))) t)
 '(term ((t (:inherit default :foreground "green")))))
