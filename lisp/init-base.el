;; Disable Backup File
(setq make-backup-files nil)

;; Disable Auto-save File
(setq auto-save-default nil)

;; 设置custom
(setq custom-file "D:/home/.emacs.d/.emacs-custom.el")
(when (file-exists-p custom-file)
  (load-file custom-file))

(provide 'init-base)