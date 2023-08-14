
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(add-to-list 'load-path "D:/home/.emacs.d./lisp")

(require 'init-straight)
(require 'init-ui)
(require 'init-base)
(require 'init-base-package)
(require 'init-font)
(require 'init-search)
(require 'init-evil)
(require 'init-org)
(require 'init-org-roam)
(require 'init-plantuml)

(setq header-line-format " ")
