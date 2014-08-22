;;; Helper functions for the initial setup


;; FUNCTIONS

;; Load path
(defun add-to-loadpath (base &optional add-subdirs)
  "Add the given directory to the load path. If add-subdirs is
  non-nil, the subdirectories are also added to the path"
  (add-to-list 'load-path base)
  (if add-subdirs
      (dolist (f (directory-files base))
        (let ( (name (concat base "/" f)) )
          (when (and (file-directory-p name)
                     (not (string= "." (substring f 0 1))))
            (add-to-list 'load-path name))))))

(defun add-to-loadpath-if-exists (path)
  "Calls add-to-loadpath only if the given directory exists"
  (when (file-directory-p path)
    (add-to-loadpath path)))


;; Path configuration
(defun add-to-path (&rest lst)
  "Adds all the given paths to the exec-path and
  PATH. E.g: (add-to-path \"/usr/local/bin\" \"/usr/bin\")"
  (dolist (path lst)
    (let ( (full-path (expand-file-name path)))
      (when (file-directory-p full-path)
        (add-to-list 'exec-path full-path)
        (update-env-var "PATH" full-path)))))

(defun update-env-var (var new-path)
  "Adds new-path to the given environment
  variable. E.g: (update-env-var \"PATH\" \"/usr/local/bin\")"
  (setenv var (concat new-path ":" (getenv var))))


;; Simulate try/catch, credit to https://curiousprogrammer.wordpress.com/2009/06/08/error-handling-in-emacs-lisp/
(defmacro safe-wrap (fn &rest clean-up)
  `(unwind-protect
       (let (retval)
         (condition-case ex
             (setq retval (progn ,fn))
           ('error
            (message (format "Caught exception: [%s]" ex))
            (setq retval (cons 'exception (list ex)))))
         retval)
     ,@clean-up))

;; OS
(defun get-os ()
  "Return a unique string depending on which os we are in"
  (interactive)
  (cond
   ((eq system-type 'darwin) "osx")
   ((eq system-type 'gnu/linux) "linux")
   ((eq system-type 'windows-nt) "windows")))


;; SETTINGS

;; Fix path
(add-to-path "/usr/local/bin" "/usr/local/sbin" "~/.bin" "~/.sbin")

(provide 'helpers)
