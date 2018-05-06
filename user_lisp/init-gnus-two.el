;;Set the gnus backend type nnml is one mail one file
;;nnfolder is group mail one file
(setq gnus-secondary-select-methods '((nnml "")))

;;pop way will delete the mail from the mail server , so  if you want reserve the mail you can use impa way
(eval-after-load "mail-source"
'(add-to-list 'mail-sources '(pop :server "mail.neusoft.com"
				  :user "ding.yq"
				  :password "<LOVEsnow99>"
				  :port 995
                                  :level 14
				  :stream tls)))


;;send mail mothod
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-default-smtp-server "smtp.neusoft.com")
(setq smtpmail-smtp-service 587)

;;(setq sendmail-program "/usr/bin/msmtp")

;;set bbdb
;;(add-to-list 'load-path "d:\\software\\Emacs\\.Emacs.d\\site-lisp\\bbdb-3.1.2\\lisp")
;;(require 'bbdb)
;;(require 'bbdb-gnus)
;;(bbdb-initialize)
;;(bbdb-initialize 'gnus 'message)  
;;(bbdb-insinuate-message)  
;;(add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)  
;;(setq bbdb-send-mail-style 'gnus)

 
;;set the bbdb file locate
;;(setq bbdb-file "d:\\software\\Emacs\\.Emacs.d\\bbdb")

;;(setq bbdb-complete-name-full-completion t)  
;;(setq bbdb-completion-type 'primary-or-name)  
;;(setq bbdb-complete-name-allow-cycling t)  



(provide 'init-gnus-two)


