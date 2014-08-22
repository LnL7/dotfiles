;;; Specific settings for Mac OS X


(when window-system
  (add-to-list 'default-frame-alist '(alpha 97 97))
  (set-face-font 'default "Anonymous Pro-14"))

(setq mac-allow-anti-aliasing t)


;; Also have to export env variables
(setenv "JAVA_HOME" "/Library/Java/Home")


;; Ignore .DS_Store files
(eval-after-load 'ido-mode
  '(progn
     (add-to-list 'ido-ignore-files "\\.DS_Store")))
