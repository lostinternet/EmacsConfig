;;flycheck mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/flycheck-master")
(add-to-list 'load-path "~/.emacs.d/elpa/dash-2.12.0")
(require 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)
(setq flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list)

;;(add-hook 'c++-mode-hook
;;          (lambda () (setq flycheck-gcc-include-path
;;                           (list (expand-file-name "E:\\test\\emacs\\gitTest\\")))))

;;(add-hook 'c++-mode-hook
;;          (lambda () (setq flycheck-gcc-include-path
;;                           (list (expand-file-name "E:\\test\\emacs\\gitTest\\include\\")))))

;;(add-hook 'c++-mode-hook
;;          (lambda () (setq flycheck-gcc-include-path
;;                           (list (expand-file-name "C:\\Program Files\\Microsoft Visual Studio\\VC98\\MFC\\Include\\")
;;				 (expand-file-name "E:\\test\\emacs\\gitTest\\include\\")
;;				 (expand-file-name "C:\\MinGW\\lib\\gcc\\mingw32\\5.3.0\\include\\c++\\") ))))


(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-include-path
                           (list (expand-file-name "C:\\Program Files\\Microsoft Visual Studio\\VC98\\MFC\\Include\\")
		(expand-file-name "C:\\Program Files\\Microsoft Visual Studio\\VC98\\Include\\")		 (expand-file-name "E:\\test\\emacs\\gitTest\\include\\")
				  ))))
;;(expand-file-name "C:\\MinGW\\lib\\gcc\\mingw32\\5.3.0\\include\\c++\\debug\\")
;;(expand-file-name "C:\\MinGW\\lib\\gcc\\mingw32\\5.3.0\\include\\c++\\profile\\")
(provide 'init-flycheck)
