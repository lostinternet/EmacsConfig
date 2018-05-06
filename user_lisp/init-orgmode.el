(defun org-mode-my-init ()
  (define-key org-mode-map (kbd "×") (kbd "*"))
  (define-key org-mode-map (kbd "－") (kbd "-"))
  )

(add-hook 'org-mode-hook 'org-mode-my-init)

(provide 'init-orgmode)
