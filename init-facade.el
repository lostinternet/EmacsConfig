(set-scroll-bar-mode -1)
(electric-pair-mode 1)
(tool-bar-mode nil)

(setq-default cursor-type 'bar)

;;(require 'show-wspace)
(menu-bar-mode 1)
(tool-bar-mode -1)
(setq gnus-inhibit-startup-message 1)

(setq column-number-mode 1)
(setq line-number-mode t)

(global-linum-mode t)
(setq mouse-yank-at-point t)

(setq make-backup-files nil)
(setq-default make-backup-files nil)

(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(show-paren-mode t)

(setq show-paren-style 'parenthesis)

(setq frame-title-format "emacs@%b")

(setq uniquify-buffer-name-style 'forward)

(setq auto-image-file-mode t)

(setq global-font-lock-mode t)

(setq x-select-enable-clipboard t)

(setq user-full-name "Charlie")
(setq user-mail-address "ding.yq@neusoft.com")

(setq require-final-newline t)

(setq track-eol t)

(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info)


;;set the tab style
(setq indent-tabs-mode nil)
(setq tab-width 4)

;;show time
(display-time-mode 1)

(provide 'init-facade)
