(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-idle-summary-mode
                                  global-semantic-mru-bookmark-mode
				  ))
;;global-semantic-load-enable-code-helpers

(semantic-mode 1)
;;(add-hook 'mode-hook
;;           (lambda ()
;;             (setq imenu-create-index-function 'semantic-create-imenu-index)
;;             ))
;;(semantic-load-enable-code-helpers)
;;(global-srecode-minor-mode 1)

;;(global-semantic-highlight-edits-mode (if window-system 1 -1))
;;(global-semantic-show-unmatched-syntax-mode 1)
;;(global-semantic-show-parser-state-mode 1)




;;semantic include list
(setq semanticdb-project-roots (list (expand-file-name "/")))
(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../IDL"
        "../.." "../../include" "../../inc" "../../common" ))
(defconst cedet-win32-include-dirs
  (list  "C:/Program Files/Microsoft Visual Studio/VC98/Include"))

(semantic-add-system-include "C:/Program Files/Microsoft Visual Studio/VC98/Include" 'c-mode)
(semantic-add-system-include "C:/Program Files/Microsoft Visual Studio/VC98/Include" 'c++-mode)
(semantic-add-system-include "c:/Program Files/Microsoft Visual Studio/VC98/MFC/Include" 'c++-mode)
(semantic-add-system-include "c:/Program Files/Microsoft Visual Studio/VC98/MFC/Include" 'c-mode)

(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/5.3.0/include/c++" 'c++-mode)
(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/5.3.0/include/c++/debug" 'c++-mode)
(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/5.3.0/include/c++" 'c-mode)
(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/5.3.0/include/c++/debug" 'c-mode)

(let ((include-dirs cedet-user-include-dirs))
  (when (eq system-type 'windows-nt)
    (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))


;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)


;;; smart complitions setup
(require 'semantic/ia)
(global-semantic-idle-completions-mode 0)

;;(require 'semantic/sb)
;;(require 'semantic-tag-folding nil 'noerror)
;;(global-semantic-tag-folding-mode 1)
;;(global-srecode-minor-mode 1)

(defadvice push-mark (around semantic-mru-bookmark activate)
  "Push a mark at LOCATION with NOMSG and ACTIVATE passed to `push-mark'.
If `semantic-mru-bookmark-mode' is active, also push a tag onto
the mru bookmark stack."
  (semantic-mrub-push semantic-mru-bookmark-ring
                      (point)
                      'mark)
  ad-do-it)

;;(defun semantic-ia-fast-jump-back ()
;;  (interactive)
;;  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
;;      (error "Semantic Bookmark ring is currently empty"))
;;  (let* ((ring (oref semantic-mru-bookmark-ring ring))
;;         (alist (semantic-mrub-ring-to-assoc-list ring))
;;         (first (cdr (car alist))))
;;    (if (semantic-equivalent-tag-p (oref first tag) (semantic-current-tag))
;;        (setq first (cdr (car (cdr alist)))))
;;    (semantic-mrub-switch-tags first)))


(defun semantic-ia-fast-jump-or-back (&optional back)
  (interactive "P")
  (if back
      (semantic-ia-fast-jump-back)
    (semantic-ia-fast-jump (point))))

;;(define-key semantic-mode-map [f12] 'semantic-ia-fast-jump-or-back)
(define-key semantic-mode-map [f12] 'semantic-ia-fast-jump)
(define-key semantic-mode-map [S-f12] 'semantic-ia-fast-jump-or-back)

;;(define-key semantic-mode-map [f12] 'semantic-ia-fast-jump)
;;(define-key semantic-mode-map [S-f12] 'semantic-mrub-switch-tags)

(provide 'init-semantic)
