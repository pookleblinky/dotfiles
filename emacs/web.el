;; Web

(setq browse-url-browser-function 'w3m-goto-url-new-session)

;; Android UA
(setq w3m-user-agent "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; HTC_Pyramid Build/GRI40) AppleWebKit/533.1(KHTML, like Gecko) Version/4.9 Mobile Safari/533")

;; Homepage
(setq w3m-home-page "https://www.google.com")

;; Open manually
(defun w3m-open-site (site)
  "Opens in new w3m session as https"
  (interactive
   (list (read-string "Enter site (default w3m-home):" nil nil w3m-home-page nil)))
  (w3m-goto-url-new-session
   (concat "https://" site)))

;; Wiki search
(defun wiki (search-term)
  "search on wikipedia"
  (interactive
   (let ((term (if mark-active
		   (buffer-substring
		    (region-beginning)(region-end))
		 (word-at-point))))
     (list
      (read-string
       (format "Wikipedia (%s):" term) nil nil term))))
  (browse-url
   (concat
    "https://en.m.wikipedia.org/w/index.php?search="
    search-term)))

(defun myblog ()
  (interactive)
  (browse-url "https://pookleblinky.github.io"))
