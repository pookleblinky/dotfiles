;; Org mode Templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/refile.org" "Tasks")
	 "* TODO %?\n %i\n %a")
	("b" "Blog" entry (file+headline "~/org/refile.org" "Blog")
	 "* Blog:")
	("c" "Code" entry (file+headline "~/org/refile.org" "Code")
	 "* Code:")
	("n" "Notes" entry (file+headline "~/org/refile.org" "Notes")
	 "* Note:")
	("y" "Yakshaving" entry (file+headline "~/org/refile.org" "Yakshaving"))))

;; Refile targets
(setq org-refile-targets '((nil :maxlevel . 9)
			   (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil) ; Refile at once
(setq org-refile-use-outline-path t)          ; show full path
