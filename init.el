
;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;;----------------------------------------------------------------------------
;; Temporarily reduce garbage collection during startup
;;----------------------------------------------------------------------------
(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
  "Initial value of `gc-cons-threshold' at start-up time.")
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
;;(require 'init-elpa)      ;; Machinery for installing required packages
;;(require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;----------------------------------------------------------------------------
;;(require 'init-preload-local nil t)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
;;facade
(require 'init-facade)
(load-theme 'deeper-blue)

(require 'init-ivy)

;;Chinese input mothed
(require 'init-eim)


;;edit
;;(require 'init-tabbar)
(require 'init-yasnippet)
(require 'init-company)
(require 'init-flycheck)
(require 'init-xcscope)
;;(require 'init-origami)
(require 'init-semantic)
;;
;;(require 'init-windows)
;;(require 'init-sr-speedbar)



;;diff
(require 'init-ediff)
;;build
;;(require 'init-cmake)
;;debug
;;(require 'init-cdb-gud)
;;(require 'init-gnus-two)



;;org mode
;;(require 'init-orgmode)

;;(require 'init-)
;;(add-to-list 'load-path "D:\\software\\emacs\\.emacs.d\\site-lisp")
;;(require 'org-tree-slide)

;;test area



;;(setq org-agenda-files (list "f:\\file\\workSchedule.org" ))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))


(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
