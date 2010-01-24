(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/dthompson/custom.el")
(load custom-file)

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

(autoload 'css-mode "css-mode")
(setq auto-mode-alist
      (cons '("\\.css\\'" . css-mode) auto-mode-alist))



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
