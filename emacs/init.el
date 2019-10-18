(require 'package)
(setq package-enable-at-startup nil)

;; https://emacs.stackexchange.com/a/2989
(setq package-archives
      '(("elpa"     . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("elpa"     . 5)
        ("melpa"        . 0)))

(package-initialize)
;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
	(require 'use-package))
;;(require 'diminish)
(require 'bind-key)
(setq use-package-always-ensure t)

;; =================================================
;; MÔI TRƯỜNG LÀM VIỆC
;; Turn off menubar, toolbar, scollbar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; Chỉnh font chữ 
(set-face-attribute 'default nil
                    :family "Space Mono"
                    :height 140
                    :weight 'normal
                    :width 'normal)

;; Display line number when programming
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d \u2502")
;;Word wrap
(global-visual-line-mode t)
;; Display paren (highlight matching brackets)
(show-paren-mode 1)
(setq show-paren-delay 0)
(global-linum-mode t) ;; enable line numbers globally

;; Plugins
(use-package all-the-icons)
(use-package better-defaults)
;; Display a directory tree view on the left side
(use-package neotree
 :config (progn
	  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
 :bind ("C-x n o" . neotree-toggle))
;; Autocomplete
(use-package company
  :config (global-company-mode t))
;; Themes
(use-package doom-themes
  :config (load-theme 'doom-one t))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (doom-themes company neotree better-defaults all-the-icons use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
