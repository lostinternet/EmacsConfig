;;CMake
(add-to-list 'load-path "D:\\software\\emacs\\.emacs.d\\site-lisp")
(require 'cmake-mode)  
(setq auto-mode-alist  
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)  
                ("\\.cmake\\'" . cmake-mode))  
                auto-mode-alist))  

(provide 'init-cmake)
