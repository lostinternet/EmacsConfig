;;use xcscope
(add-to-list 'load-path "~/.emacs.d/site-lisp/cscope-15.8b/contrib/xcscope/")

(require 'xcscope)
(define-key global-map [(f3)]  'cscope-next-symbol)

(define-key global-map [(shift f3)]  'cscope-prev-symbol)

(provide 'init-xcscope)
