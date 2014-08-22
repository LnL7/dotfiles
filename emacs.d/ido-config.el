;;; The configuration for IDO

(ido-mode t)

(setq
  ido-create-new-buffer 'always
  ido-enable-flex-matching t
  ido-enable-prefix nil
  ido-max-directory-size 100000
  ido-max-prospects 10
  ido-use-filename-at-point 'guess
  )


(provide 'ido-config)
