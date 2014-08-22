;;; Things that don't fit anywhere else


(setq
  echo-keystrokes 0.1
  require-final-newline t
  uniquify-buffer-name-style 'forward
  whitespace-line-column 120
  whitespace-style '(trailing lines space-before-tab indentation space-after-tab)
  xterm-mouse-mode t
  )

(when window-system
  (blink-cursor-mode -1)
  (column-number-mode t)
  (mouse-wheel-mode t)
  (tooltip-mode -1)

  (setq
    frame-title-format '(buffer-file-name "%f" ("%b"))
    ))

;; UTF-8 all the way
(prefer-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)

(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)


;; Transparently open compressed files
(auto-compression-mode t)

;; Enable syntax highlighting for older Emacsen that have it off
(global-font-lock-mode t)

;; Save a list of recent files visited
(recentf-mode 1)

;; Seed the random-number generator
(random t)

;; Store all backup and autosave files in the tmp dir
(setq
  auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
  backup-directory-alist `((".*" . ,temporary-file-directory))
  )

;; Make emacs use the clipboard
(setq x-select-enable-clipboard t)

;; Alias
(defalias 'yes-or-no-p 'y-or-n-p)

;; Cleanup whitespace before saving
(add-hook 'before-save-hook 'whitespace-cleanup)


(provide 'misc)
