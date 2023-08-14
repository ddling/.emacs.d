(use-package org
  :straight
  (:type built-in)
  :config
  (setq org-src-fontify-natively t)
  (setq org-hide-emphasis-markers t)
  (setq org-display-remote-inline-images 'download)
  (setq org-agenda-files
	'("D:/home/gtd/" "D:/home/notes/"))
  (setq org-todo-keywords
	'((sequence "TODO(t)" "DOING(i)" "BLOCK(b!)" "|" "DONE(d!)" "CANCELD(c@/!)")))
  (setq org-todo-keyword-faces
	'(("DOING" .
	   (:foreground "yellow" :weight bold))
	  ("BLOCK" .
	   (:foreground "orange" :weight bold))))
  (setq org-html-validation-link nil)
  (add-to-list 'org-structure-template-alist
	       '("i" . "info"))
  (setq org-return-follows-link t)
  (setq org-html-table-default-attributes nil)
  (setq org-ellipsis " ▾ "
        org-hide-leading-stars t
        org-priority-highest ?A
        org-priority-lowest ?E
        org-priority-faces
	'((?A . 'all-the-icons-red)
	  (?B . 'all-the-icons-orange)
	  (?C . 'all-the-icons-yellow)
	  (?D . 'all-the-icons-green)
	  (?E . 'all-the-icons-blue)))
  (setq org-confirm-babel-evaluate nil)
  (setq org-startup-with-inline-images t)
  (setq org-tag-alist
	'(
	  ;; locations
	  (:startgroup . nil)
	  ("@company" . ?w)
	  ("@home" . ?h)
	  (:endgroup . nil)
	  ;; languages
	  (:startgroup . nil)
	  ("@python" . ?p)
	  ("@java" . ?j)
	  (:endgroup . nil)
	  ("mindmap" . ?m)
	  ))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (python . t)
     (java . t)
     (shell . t)
     (plantuml . t)))
  (add-hook 'org-mode-hook
	    (lambda
	      ()
	      (push
	       '("#+begin_src" .  "†")
	       prettify-symbols-alist)
	      (push
	       '("#+end_src" .  "†")
	       prettify-symbols-alist)
	      (push
	       '("#+begin_example" . "↦" )
	       prettify-symbols-alist)
	      (push
	       '("#+end_example" . "⇤" )
	       prettify-symbols-alist)
	      (prettify-symbols-mode)))
  (add-hook 'org-mode-hook
	    (lambda
	      ()
	      (kill-local-variable 'line-spacing)
	      (olivetti-mode 1)
	      (setq-local default-text-properties
			  '(line-spacing 0.0   
					 line-height 1.25      
					 ))))
  (use-package org-superstar
    :straight t
    :after org
    :config
    (setq org-superstar-headline-bullets-list
	  '("◉" "○" "✸" "✿"))
    (setq org-startup-indented t)
    (add-hook 'org-mode-hook
	      (lambda
		()
		(org-superstar-mode 1)))))
(provide 'init-org)
