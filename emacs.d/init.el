;;; This is the first thing to get loaded


(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq dotfiles-dir (file-name-directory
                     (or (buffer-file-name) load-file-name)))

(load-file (concat dotfiles-dir "helpers.el"))


(add-to-loadpath dotfiles-dir)
(add-to-loadpath (concat dotfiles-dir "vendor") t)
(byte-recompile-directory (concat dotfiles-dir "vendor") 0)


(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)


;; Load up el-get, the package manager
(require 'el-get-config)


(require 'appearance)
(require 'bindings)
(require 'defuns)
(require 'eshell-config)
(require 'ido-config)
(require 'misc)

(setq
  os-specific-config (concat dotfiles-dir (get-os) ".el")
  )

(if (file-exists-p os-specific-config) (load os-specific-config))
