(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(company-backends
   (quote
    (company-abbrev company-nxml company-css company-eclim company-semantic company-xcode company-cmake company-capf company-files
		    (company-dabbrev-code company-gtags company-etags company-keywords)
		    company-oddmuse company-dabbrev)))
 '(company-minimum-prefix-length 1)
 '(ede-project-directories
   (quote
    ("e:/test/TestEmacsProj" "e:/test/LogViewer/LogViewer" "d:/software/emacs/.emacs.d")))
 '(flycheck-gcc-include-path nil)
 '(global-company-mode t)
 '(global-semanticdb-minor-mode t)
 '(gud-cdb-directories (quote ("f:/work/N16XR02P/ECcon/EasyCon/test/")))
 '(imenu-max-items 32767)
 '(package-selected-packages
   (quote
    (python ivy ggtags yasnippet company auctex fullframe)))
 '(safe-local-variable-values (quote ((no-byte-compile t))))
 '(semantic-sb-info-format-tag-function (quote semantic-format-tag-summarize))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(speedbar-use-images nil)
 '(speedbar-use-imenu-flag t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))

;;maximize the window
(defun w32-maximize-frame ()
    "Maximize the current frame"
     (interactive)
     (w32-send-sys-command 61488))

(w32-maximize-frame)



;;set for browser
(setq url-proxy-services '(("no_proxy" . "work\\.com")
                       ("http" . "proxy.neusoft.com:8080")))

;;(add-to-list 'load-path "D:\\software\\emacs\\thirdpartLib\\libxml2-2.7.8-w32-bin\\bin")


;;set my C/C++ style
	
(setq c-default-style
       '((C++/l-mode . "CC")(other . "awk")))	




;;IDO mode
;;(ido-mode t)

(defun my-c++-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (modify-syntax-entry ?_ "w")
;;  (c-set-style "stroustrup")
)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'c-mode-hook 'my-c++-mode-hook)

(defun refresh-file ()  
  (interactive)  
  (revert-buffer t (not (buffer-modified-p)) t))
(global-set-key [(control f5)] 'refresh-file)  



;;set space after a comma
(global-set-key (kbd ",")
                #'(lambda ()
                    (interactive)
                    (insert ", ")))





;;add .h file to c++ mode to resolve public etc. indent problem and tabbar group 
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.idl\\'". c-mode))

;;use ctags
(global-set-key (kbd "C-M-.") 'pop-tag-mark)




