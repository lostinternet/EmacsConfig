;;Tabbar
(add-to-list 'load-path "d:\\software\\Emacs\\.Emacs.d\\site-lisp")
(require 'tabbar)  
(tabbar-mode 1)

(defun my-tabbar-buffer-groups ()  
  "Return the list of group names the current buffer belongs to.  
Return a list of one element based on major mode."  
  (list  
   (cond  
    ((string-equal "*" (substring (buffer-name) 0 1))  
     "Emacs Buffer"  
     )  
    ((eq major-mode 'dired-mode)  
     "Dired"  
     )  
    (t  
     "User Buffer"  
     ))))  
(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)
(global-set-key (kbd "<M-left>") 'tabbar-backward-tab)  
(global-set-key (kbd "<M-right>")  'tabbar-forward-tab) 


(provide 'init-tabbar)
