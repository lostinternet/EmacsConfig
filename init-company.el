;;Company mode
(add-hook 'after-init-hook 'global-company-mode)
;;(add-hook 'c++-mode-hook
;;            (lambda ()
;;              (set (make-local-variable 'company-backends) '(company-semantic))))
(setq company-minimum-prefix-length 1)
;;resolve company and yasnippet
;;(defun check-expansion ()
;;    (save-excursion
;;      (if (looking-at "\\_>") t
;;        (backward-char 1)
;;        (if (looking-at "\\.") t
;;          (backward-char 1)
;;          (if (looking-at "->") t nil)))))

;;  (defun do-yas-expand ()
;;    (let ((yas/fallback-behavior 'return-nil))
;;      (yas/expand)))

;;  (defun tab-indent-or-complete ()
;;    (interactive)
;;    (if (minibufferp)
;;        (minibuffer-complete)
;;      (if (or (not yas/minor-mode)
;;              (null (do-yas-expand)))
;;          (if (check-expansion)
;;              (company-complete-common)
;;            (indent-for-tab-command)))))

;;  (global-set-key [tab] 'tab-indent-or-complete)

(provide 'init-company)
