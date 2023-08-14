(use-package emacsql-sqlite3
  :straight t)

(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (file-truename "D:/home/notes"))
  (org-roam-db-location (file-truename "D:/home/notes/org-roam.db"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-database-connector 'sqlite3)
  (setq org-roam-graph-executable "C:/Program Files/Graphviz/bin/dot.exe")
  (setq org-roam-capture-templates
      '(("d" "default" plain "%?"
		 :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
				    "#+title: ${title}\n")
		 :unnarrowed t)
	("f" "definition" plain "%?"
	 :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
			    "#+title: ${title}\n\n*${title}*\n")
	 :unnarrowed t)))
  (org-roam-db-autosync-mode))

(use-package org-roam-ui
  :straight t
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
	org-roam-ui-follow t
	org-roam-ui-update-on-save t
	org-roam-ui-open-on-start t))

(provide 'init-org-roam)
