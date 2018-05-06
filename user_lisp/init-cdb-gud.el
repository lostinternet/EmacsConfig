;;cdb-gud
;;(load 'cdb-gud)
;;+cdb [[http://msdn.microsoft.com/en-us/vstudio/default.aspx][Visual studio ]]
;;(when (eq system-type 'windows-nt)
;;(load-file )
;;)


(require 'cdb-gud)

(global-set-key [f5]    'gud-cont)
(global-set-key [f9]    'gud-break)
;;(global-set-key [f10]    'gud-next)
;;(global-set-key [f11]    'gud-step)


(provide 'init-cdb-gud)
