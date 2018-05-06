

;; Send mail using SMTP via mail.example.org.
(setq smtpmail-smtp-server "mail.neusoft.com")

;; Send mail using SMTP on the mail submission port 587.
;;(setq smtpmail-smtp-service 465)

;;(setq send-mail-function 'smtpmail-send-it)
;;(setq gnus-select-method  
  ;;    '(nnimap "neusoft"  
;;           (nnimap-address "imap.neusoft.com")  
;;           (nnimap-server-port 993)  
;;           (nnimap-stream ssl)))  
  
;;(setq message-send-mail-function 'smtpmail-send-it  
;;      smtpmail-starttls-credentials '(("smtp.neusoft.com" 465 nil nil))  
;;      smtpmail-auth-credentials '(("smtp.neusoft.com" 465  
;;                   "ding.yq@neusoft.com" nil))  
;;      smtpmail-default-smtp-server "smtp.neusoft.com"  
;;      smtpmail-smtp-server "smtp.neusoft.com"  
;;      smtpmail-smtp-service 465
;;      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")  

;;(setq gnus-select-method '(nntp "msnews.microsoft.com"))
;;(setq gnus-ignored-newsgroups "")

(setq gnus-secondary-select-methods '((nnml "")))
;;(setq gnus-secondary-select-methods '((nnfolder "")))
(setq mail-source
      '((pop :server "pop.neusoft.com"
	     :user "ding.yq@neusoft.com"
	     :port 995
	     :password "<LOVEsnow99>"
	     :stream ssl)))


(setq smtpmail-auth-credentials
      '(("smtp.neusoft.com"
	 465
	 "ding.yq"
	 "<LOVEsnow99>")))
(setq smtpmail-default-smtp-server "smtp.neusoft.com")
(setq smtpmail-smtp-server "smtp.neusoft.com")
(setq message-send-mail-function 'smtpmail-send-it)
(set-language-environment 'Chinese-GB)
;;(setq guns-default-charset 'chinese-iso-8bit
;;      gnus-group-name-charset-group-alist '((".*" . chinese-iso-8bit))
;;      gnus-summary-show-article-charset-alist
;;      '((1 . chinese-iso-8bit)
;;	(2 . gbk)
;;	(3 . big5)
;;	(4 . utf-8))
;;      gnus-newsgroup-ignored-charsets
;;      '(unknown-8bit x-unknown iso-8859-1))
;;(setq gnus-default-subscribed-newsgroups
;;      '("gnu.emacs.help"
;;	"cn.comp.os.linux"))
(setq gnus-use-cache 'passive)
(setq gnus-fetch-old-headers 'some)
;;(setq gnus-message-archive-group
  ;;    '((if (message-news-p)
;;	    "nnfolder:mail.sent.news"
;;	  "nnfoler:mail.sent.mail")))

(provide 'init-gnus)
