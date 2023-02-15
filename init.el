;; Melpa packages

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Custom variables

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("c4cecd97a6b30d129971302fd8298c2ff56189db0a94570e7238bc95f9389cfb" default))
 '(package-selected-packages '(yasnippet auctex flyspell-correct magit zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Appearance settings

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(tool-bar-mode -1)

(set-face-attribute 'default nil :font "Source Code Pro-14" )
(set-frame-font "Source Code Pro-14" nil t)

(setq initial-buffer-choice "/Users/christianmethot/Library/CloudStorage/Dropbox/projets.org")

;; French correction mode for org files

(defun french-correction-mode ()
  (flyspell-mode)
  (ispell-change-dictionary "francais")
  )

(add-hook 'org-mode-hook #'french-correction-mode)

;; Ispell dictionnary location

(setq ispell-program-name "/opt/homebrew/opt/aspell/bin/aspell")

;; Keybindings modifier

(when (eq system-type 'darwin)
  (setq mac-right-option-modifier 'none))

;; Yasnippet mode

(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)
