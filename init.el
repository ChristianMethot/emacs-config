(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("c4cecd97a6b30d129971302fd8298c2ff56189db0a94570e7238bc95f9389cfb" default))
 '(package-selected-packages '(flyspell-correct magit zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Remove the toolbar
(tool-bar-mode -1)

;; Set fonts
(set-face-attribute 'default nil :font "Source Code Pro-14" )
(set-frame-font "Source Code Pro-14" nil t)

;; Set ispell dictionnary location
(setq ispell-program-name "/opt/homebrew/opt/aspell/bin/aspell")

;; French correction mode for org files
(defun french-correction-mode ()
  (flyspell-mode)
  (ispell-change-dictionary "francais")
  )

(add-hook 'org-mode-hook #'french-correction-mode)
