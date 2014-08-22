;;; How emacs looks


(setq
  color-theme-is-global t
  font-lock-maximum-decoration t
  inhibit-startup-message t
  truncate-partial-width-windows nil
  visible-bell t
  )


;; Show line numbers
(global-linum-mode t)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode t)


(add-hook 'before-make-frame-hook 'turn-off-tool-bar)


(provide 'appearance)
