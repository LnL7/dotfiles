;;; Global Functions


;; BUFFERS

(defun create-scratch-buffer nil
  "create a new scratch buffer to work in. (could be *scratch* - *scratchX*)"
  (interactive)
  (let ((n 0)
        bufname)
    (while (progn
             (setq bufname (concat "*scratch"
                                   (if (= n 0) "" (int-to-string n))
                                   "*"))
             (setq n (1+ n))
             (get-buffer bufname)))
    (switch-to-buffer (get-buffer-create bufname))
    (if (= n 1) (lisp-interaction-mode)) ; 1, because n was incremented
    ))


(defun kill-other-buffers ()
  "Kill all buffers but the current one.
  Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))


(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (whitespace-cleanup))


(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))


;; MISC

(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))


(defun recompile-init ()
  "Byte-compile all your dotfiles again."
  (interactive)
  (byte-recompile-directory dotfiles-dir 0))


(provide 'defuns)
