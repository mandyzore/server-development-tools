(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
 )

;; For my language code setting (UTF-8)
;(setq current-language-environment "UTF-8")
;(setq default-input-method "chinese-py")
;(setq locale-coding-system 'utf-8)
;(set-terminal-coding-system 'utf-8)
;(set-keyboard-coding-system 'utf-8)
;(set-selection-coding-system 'utf-8)
;(prefer-coding-system 'utf-8)


(add-to-list 'load-path "~/.emacs.d/config")
;----------------------------------------------------
;;;;
(require 'general)
;----------------------------------------------------
;----------------------------------------------------
;;;;   color
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)
;----------------------------------------------------
;----------------------------------------------------
;;;;   插件配置
;(require 'myplugin)
;----------------------------------------------------
;----------------------------------------------------
;;;一些有用的配置
;(require 'skills)
;---------------------------------------------------
;---------------------------------------------------
;;;     java
;---------------------------------------------------
;---------------------------------------------------
;(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
;(load "jde")
;;;     git-emacs
;---------------------------------------------------
;---------------------------------------------------
;(add-to-list 'load-path "~/.emacs.d/git-emacs-master/")
;(require 'git-emacs)

;--------------------------------------------------
;--------------------------------------------------
;      snippet

;~/.emacs.d/elpa/yasnippet-20141223.303/snippets/

(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20141223.303")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "snippets")

;--------------------------------------------------
;--------------------------------------------------
;      autoComplete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") ;;;
(define-key ac-completing-map "\M-n" 'ac-next)  ;;;
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)



;---------------------------------------------------------
;---------------------------------------------------------
;         pymacs


;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)
;;---------------------------------------------------------
;;---------------------------------------------------------
;;      rope  pycomplete
;(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)


(add-to-list 'load-path "~/.emacs.d/elpa/pylint-20150123.1600")
(require 'pylint)
(add-to-list 'load-path "~/.emacs.d/elpa/py-autopep8-20140908.31")
(require 'py-autopep8)
(require 'tramp)
(add-hook 'before-save-hook 'delete-trailing-whitespace)



;(add-to-list 'load-path "~/.emacs.d/elpa/python-mode-20150117.955")
;(require 'python-mode)

;(require 'ipython)
