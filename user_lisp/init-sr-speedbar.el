;;load sr-speedbar
(add-to-list 'load-path "d:\\software\\Emacs\\.Emacs.d\\site-lisp")
(require 'sr-speedbar)

(speedbar-add-supported-extension ".idl")

;;(sr-speedbar 1)

(setq speedbar-use-images nil)
(provide 'init-sr-speedbar)
