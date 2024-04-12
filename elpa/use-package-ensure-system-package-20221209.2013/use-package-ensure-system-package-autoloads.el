;;; use-package-ensure-system-package-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from use-package-ensure-system-package.el

(autoload 'use-package-normalize/:ensure-system-package "use-package-ensure-system-package" "\
Turn ARGS into a list of conses of the form (PACKAGE-NAME . INSTALL-COMMAND).

(fn NAME-SYMBOL KEYWORD ARGS)")
(autoload 'use-package-handler/:ensure-system-package "use-package-ensure-system-package" "\
Execute the handler for `:ensure-system-package' keyword in `use-package'.

(fn NAME KEYWORD ARG REST STATE)")
(register-definition-prefixes "use-package-ensure-system-package" '("use-package-ensure-system-package-"))

;;; End of scraped data

(provide 'use-package-ensure-system-package-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; use-package-ensure-system-package-autoloads.el ends here