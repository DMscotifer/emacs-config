;                                          <xeee..                             
;                                      ueeeeeu..^"*$e.                         
;                               ur d$$$$$$$$$$$$$$Nu "*Nu                      
;                             d$$$ "$$$$$$$$$$$$$$$$$$e."$c                    
;                         u$$c   ""   ^"^**$$$$$$$$$$$$$b.^R:                  
;                       z$$#"""           `!?$$$$$$$$$$$$$N.^                  
;                     .$P                   ~!R$$$$$$$$$$$$$b                  
;                    x$F                 **$b. '"R).$$$$$$$$$$                 
;                   J^"                           #$$$$$$$$$$$$.               
;                  z$e                      ..      "**$$$$$$$$$               
;                 :$P           .        .$$$$$b.    ..  "  #$$$$              
;                 $$            L          ^*$$$$b   "      4$$$$L             
;                4$$            ^u    .e$$$$e."*$$$N.       @$$$$$             
;                $$E            d$$$$$$$$$$$$$$L "$$$$$  mu $$$$$$F            
;                $$&            $$$$$$$$$$$$$$$$N   "#* * ?$$$$$$$N            
;                $$F            '$$$$$$$$$$$$$$$$$bec...z$ $$$$$$$$            
;               '$$F             `$$$$$$$$$$$$$$$$$$$$$$$$ '$$$$E"$            
;                $$                  ^""""""`       ^"*$$$& 9$$$$N             
;                k  u$                                  "$$. "$$P r            
;                4$$$$L                                   "$. eeeR             
;                 $$$$$k                                   '$e. .@             
;                 3$$$$$b                                   '$$$$              
;                  $$$$$$                                    3$$"              
;                   $$$$$  dc                                4$F               
;                    RF** <$$                                J"                
;                     #bue$$$LJ$$$Nc.                        "                 
;                      ^$$$$$$$$$$$$$r                                         
;                        `"*$$$$$$$$$                                      

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(calendar-american-date-display-form
   (quote
    ((if dayname
	 (concat dayname ", "))
     day " " monthname ", " year)))
 '(calendar-date-display-form
   (quote
    ((if dayname
	 (concat dayname ", "))
     day " " monthname ", " year)))
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "5c64430cb8e12e2486cd9f74d4ce5172e00f8e633095d27edd212787a4225245" "1342a81078bdac27f80b86807b19cb27addc1f9e4c6a637a505ae3ba4699f777" default)))
 '(default-frame-alist (quote ((undecorated . t))))
 '(elfeed-feeds
   (quote
    ("https://www.cnet.com/rss/news/" "https://stallman.org/rss/rss.xml" "https://www.linuxjournal.com/node/feed" "https://news.ycombinator.com/rss" "https://hackaday.com/feed/" "http://feeds.arstechnica.com/arstechnica/index" "http://www.independent.co.uk/news/rss" "https://www.telegraph.co.uk/news/rss.xml" "https://theintercept.com/feed/?lang=en" "https://www.newstatesman.com/feeds/site_feed.rss" "http://feeds.reuters.com/reuters/topNews?irpc=69" "http://www.independent.co.uk/rss" "http://www.telegraph.co.uk/newsfeed/rss/news-uk_news.xml" "http://www.scotsman.com/rss/cmlink/1.65694" "http://www.linuxjournal.com/node/feed" "http://www.engadget.com/rss-full.xml" "http://www.drdobbs.com/rss/all" "http://feeds.gawker.com/lifehacker/vip" "http://stallman.org/rss/rss.xml" "http://feeds.feedburner.com/entrepreneur/latest" "http://feeds.feedburner.com/codinghorror/" "http://news.com.com/2547-1_3-0-5.xml" "http://www.linuxinsider.com/perl/syndication/rssfull.pl" "http://news.ycombinator.com/rss" "http://feeds.arstechnica.com/arstechnica/index/" "https://www.youtube.com/feeds/videos.xml?channel_id=UCbrXRQHV4TOU4Pqzw325Z1A" "http://www.joelonsoftware.com/rss.xml" "http://www.hackaday.com/rss.xml" "http://www.theverge.com/rss/full.xml" "http://feeds.feedburner.com/johnpilger" "https://firstlook.org/theintercept/feed/" "http://www.morningstaronline.co.uk/index.php/news/rss/feed/latest" "http://www.newstatesman.com/feeds/online-contents.rss")))
 '(fci-rule-color "#383838")
 '(fill-column 100)
 '(org-after-todo-state-change-hook (quote (org-clock-out-if-current)))
 '(org-agenda-files (quote ("~/org/notes.org")))
 '(org-support-shift-select (quote always))
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   (quote
    (org-ref elfeed-web elfeed rvm vimish-fold org-pomodoro free-keys ruby-end minitest org-trello magit helm-org-rifle robe grizzl helm-projectile projectile smartparens ag nlinum calfw-cal org-journal ac-html god-mode cyberpunk-theme pdf-tools discover anaconda-mode hideshow-org helm-swoop helm org ace-window highlight-symbol js2-highlight-vars ac-inf-ruby enh-ruby-mode python-mode python green-is-the-new-black-theme fill-column-indicator auto-complete)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(menu-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode -1)

(setq inhibit-startup-screen t)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
    '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if usings stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   ))
(display-battery-mode 1)

(require 'ido)
(ido-mode t)

(require 'fill-column-indicator)

; python-mode
(setq py-install-directory "~/.emacs.d/python-mode-6.0.11")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-argsw
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)

; pymacs
(add-to-list 'load-path "~/.emacs.d/pymacs-0.25")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

(package-initialize)
(elpy-enable)

(global-set-key (kbd "C-x #") 'comment-region)
 (global-set-key (kbd "C-x '") 'uncomment-region)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(persistent-scratch-setup-default)
(setq )
(require 'auto-complete)
(global-auto-complete-mode t)

(electric-pair-mode)

(eval-after-load "js2-highlight-vars-autoloads"
  '(add-hook 'js2-mode-hook (lambda () (js2-highlight-vars-mode))))

(require 'highlight-symbol)
(global-set-key [(control 3)] 'highlight-symbol)
(global-set-key [(control alt 3)] 'highlight-symbol-next)
(global-set-key [(shift alt 3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta shift f3)] 'highlight-symbol-query-replace)

;; Remember to open old files on startuo
(desktop-save-mode 1)

;; helm
(global-set-key (kbd "M-i") 'helm-swoop)
 
(require 'helm-config)

(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "C-x m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x f") 'helm-find-files)


;; hideshow-org minor mode configurations
(load-library "hideshow")
    (global-set-key (kbd "C-+") 'toggle-hiding)
    (global-set-key (kbd "C-\\") 'toggle-selective-display)

(setq python-shell-interpreter "/usr/bin/python3")
(load "~/.emacs.d/elpa/python-mode-20170919.156/python-mode.el")

(find-file "~/Documents/notes.org") 

(eval-after-load 'linum
  '(progn
     (defface linum-leading-zero
       `((t :inherit 'linum
            :foreground ,(face-attribute 'linum :background nil t)))
       "Face for displaying leading zeroes for line numbers in display margin."
       :group 'linum)

     (defun linum-format-func (line)
       (let ((w (length
                 (number-to-string (count-lines (point-min) (point-max))))))
         (concat
          (propertize (make-string (- w (length (number-to-string line))) ?0)
                      'face 'linum-leading-zero)
          (propertize (number-to-string line) 'face 'linum))))

     (setq linum-format 'linum-format-func)))

 ;; ========== Place Backup Files in Specific Directory ========== ;;

;; Enable backup files.
(setq make-backup-files t)

;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/backup_files"))))

;; ========== Smartparens ========== ;;

(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">")
  (sp-local-pair "<%" "%>"))


;; ========== Projectile ========== ;;

(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

;; ========== Robe ========== ;;

(add-hook 'ruby-mode-hook 'robe-mode)

;; ========== Diary ========== ;;

(setq view-diary-entries-initially t
       mark-diary-entries-in-calendar t
       number-of-diary-entries 7)
 (add-hook 'diary-display-hook 'fancy-diary-display)
 (add-hook 'today-visible-calendar-hook 'calendar-mark-today)

;; ========== Insert Date ========== ;;

(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%d-%m-%Y)")))

 (defun insdate-insert-current-date (&optional omit-day-of-week-p)
    "Insert today's date using the current locale.
  With a prefix argument, the date is inserted without the day of
  the week."
    (interactive "P*")
    (insert (calendar-date-string (calendar-current-date) nil
				  omit-day-of-week-p)))
  (global-set-key "\C-x\M-d" `insdate-insert-current-date)

;; ========== Optimise Org ========== ;;

(require 'helm-org-rifle)

;; ========== Ruby ========== ;;

  (add-to-list 'auto-mode-alist
               '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
               '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))


;; ==================== Vimish-fold ==================== ;;

(require 'vimish-fold)
(global-set-key (kbd "C-x v f") #'vimish-fold)
(global-set-key (kbd "C-x v v") #'vimish-fold-delete)

;; ==================== Ruby ==================== ;;

(eval-when-compile (require 'cl))
(defvar eshell-path-env)
(defvar persp-mode)
(defvar perspectives-hash)
(declare-function persp-switch "perspective" (name))

(add-to-list 'load-path "~/.emacs.d/vendor/bundler.el")
(require 'bundler)

(add-hook 'ruby-mode-hook 'robe-mode)

;; ==================== Org Mode ==================== ;;

(setq org-agenda-include-diary t)

(require 'org)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/personal.org"
                             "~/org/business.org" 
                             "~/org/notes.org"))

