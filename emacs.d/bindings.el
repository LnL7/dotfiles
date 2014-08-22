;;; Set up some handy key bindings


;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; Should be able to eval-and-replace anywhere.
(global-set-key (kbd "C-c e") 'eval-and-replace)

;; Perform general cleanup
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; Start eshell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'eshell)

;; Start a new eshell even if one is active.
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t))):w

;; Toggle transparency
(global-set-key (kbd "C-c t") (lambda ()
                                (interactive)
                                (if (/= (cadr (frame-parameter nil 'alpha)) 97)
                                  (set-frame-parameter nil 'alpha '(97 97))
                                  (set-frame-parameter nil 'alpha '(32 32)))))


(provide 'bindings)
