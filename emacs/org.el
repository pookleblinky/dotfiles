;; Org mode Templates
(setq org-capture-templates
      '(("t" "Todo" entry (file "~/org/refile.org")
	 "* TODO %?\n %i\n %a")
	("b" "Blog" entry (file "~/org/refile.org")
	 "* Blog post:")
	("c" "Code" entry (file "~/org/refile.org")
	 "* Code:")
	("n" "Notes" entry (file "~/org/refile.org")
	 "* Note:")
	("y" "Yakshaving" entry (file "~/org/refile.org")
	 "* Yakshave:")))

;; Refile targets
(setq org-refile-targets '((nil :maxlevel . 9)
			   (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil) ; Refile at once
(setq org-refile-use-outline-path t)          ; show full path
