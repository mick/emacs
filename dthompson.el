(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/dthompson/custom.el")
(load custom-file)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(server-start)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "dthompson/lisp")
(load "dthompson/global")
(load "dthompson/defuns")
(load "dthompson/bindings")
(load "dthompson/modes")
(load "dthompson/theme")
(load "dthompson/temp_files")
(load "dthompson/github")
(load "dthompson/git")
(load "dthompson/todo")
(load "dthompson/python")
(load "dthompson/javascript")
;;(load "dthompson/erlang")

(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)

(color-theme-midnight)
;; setup erlang mode
;; add the location of the elisp files to the load-path
(setq load-path (cons  "/usr/local/Cellar/erlang/R13B03/lib/erlang/lib/tools-2.6.5/emacs"
         load-path))
;; set the location of the man page hierarchy
(setq erlang-root-dir "/usr/local/Cellar/erlang/R13B03/share")
;; add the home of the erlang binaries to the exec-path
(setq exec-path (cons "/usr/local/bin" exec-path))
;; load and eval the erlang-start package to set up 
;; everything else 
(require 'erlang-start)

(add-hook 'erlang-mode-hook
               (lambda ()
                (font-lock-add-keywords nil
                 '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))


(autoload 'css-mode "css-mode")
(setq auto-mode-alist
      (cons '("\\.css\\'" . css-mode) auto-mode-alist))
;; fix css mode
(require 'css-mode)
(setq cssm-indent-level 2)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode t)
(setq js-indent-level 2)

(column-number-mode)

(when (file-exists-p "dthompson/private")
  (load "dthompson/private"))

(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'twittering-mode)
(vendor 'textile-mode)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)
(vendor 'tpl-mode)
(vendor 'open-file-in-github)
(vendor 'ooc-mode)
