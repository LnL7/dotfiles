;;; Configuration for the el-get package manager
;; Requires `git clone git@github.com:dimitri/el-get.git`

(add-to-loadpath (concat dotfiles-dir "el-get") t)

(require 'el-get)
(add-to-list 'el-get-recipe-path (concat dotfiles-dir "el-get-recipes"))

(setq
  el-get-dir (concat dotfiles-dir "el-get-packages")
  el-get-verbose t
  )


;; PACKAGES LIST

(setq packages-modes
      '(
        clojure-mode
        coffee-mode
        css-mode
        erlang-mode
        go-mode
        graphviz-dot-mode
        idris-mode
        js2-mode
        json-mode
        llvm-mode
        lua-mode
        markdown-mode
        php-mode-improved
        racket-mode
        rust-mode
        yaml-mode
        ))

(setq packages-haskell
      '(
        ghc-mod
        hamlet-mode
        haskell-mode
        structured-haskell-mode
        ))

(setq packages-ruby
      '(
        haml-mode
        inf-ruby
        rbenv
        rspec-mode
        ruby-compilation
        ruby-mode
        sass-mode
        scss-mode
        ))

(setq packages-git
      '(
        ))


(setq packages-vim
      '(
        evil
        evil-surround
        ))

(setq packages-utilities
      '(
        auto-complete
        mmm-mode
        paredit
        smex
        ))

(setq packages-theme
      '(
        color-theme
        color-theme-solarized
        ))


;; With initialization
(setq el-get-sources
      '(
        (:name auto-complete
               :after (progn
                        (set-face-background 'ac-candidate-face "white")

                        (define-key ac-complete-mode-map "\C-g" 'ac-stop)
                        (define-key ac-complete-mode-map "\r" 'ac-complete)
                        (define-key ac-menu-map "\C-n" 'ac-next)
                        (define-key ac-menu-map "\C-p" 'ac-previous)

                        (setq
                          ac-comphist-file (expand-file-name (concat dotfiles-dir "ac-comphist"))
                          ac-dwim nil
                          ac-ignore-case t
                          ac-menu-height 10
                          ac-use-menu-map t
                          )))

        (:name color-theme-solarized
               :after (progn
                        (color-theme-solarized-dark)))

        (:name evil
               :after (progn
                        (evil-mode t)

                        (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
                        (define-key evil-normal-state-map (kbd "K") 'split-line-K)
                        (define-key evil-normal-state-map (kbd "q") nil)

                        (defun split-line-K (&optional arg)
                          (interactive)
                          (evil-forward-WORD-begin)
                          (newline-and-indent))))

        (:name evil-surround
               :after (progn
                        (global-evil-surround-mode t)))

        (:name haskell-mode
               :after (progn
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)))

        (:name rbenv
               :after (progn
                        (rbenv-use-global)))

        (:name mmm-mode
               :after (progn
                        (require 'mmm-vars)
                        (require 'mmm-auto)
                        (setq mmm-global-mode 'maybe)

                        (mmm-add-classes
                          '((hamlet-quasiquote
                              :submode hamlet-mode
                              :delimiter-mode nil
                              :front "\\[x?hamlet|"
                              :back "|\\]")))
                        (mmm-add-mode-ext-class 'haskell-mode nil 'hamlet-quasiquote)))

        (:name smex
               :after (progn
                        (global-set-key "\M-X" 'smex-major-mode-commands)
                        (global-set-key "\M-x" 'smex)))

        (:name structured-haskell-mode
               :after (progn
                        (require 'shm)
                        ; (add-hook 'haskell-mode-hook 'haskell-simple-indent)
                        ; (add-hook 'haskell-mode-hook 'structured-haskell-mode)

                        (set-face-background 'shm-current-face "#002b36")
                        (set-face-background 'shm-quarantine-face "#073642")))

        ))


(el-get 'sync
        packages-modes
        packages-haskell
        packages-ruby
        packages-git
        packages-vim
        packages-utilities
        packages-theme
        (loop for src in el-get-sources collect (el-get-source-name src)))


(provide 'el-get-config)
