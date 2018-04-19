(package-initialize)

;; load emacs 24's package system. Add MELPA repository.

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
    '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if usings stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   ))


(menu-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode -1)
(setq inhibit-startup-screen t)
(display-battery-mode 1)

(setq ns-auto-hide-menu-bar t)
(set-frame-position nil 0 -24)
(tool-bar-mode 0)
(set-frame-size nil 150 80)     ;; Pick values matching your screen.

 ;; ========== Place Backup Files in Specific Directory ========== ;;

;; Enable backup files.
(setq make-backup-files t)

;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/backup_files"))))

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

;; ==================== IDO ==================== ;;

(require 'ido)
(ido-mode 1)
(ido-everywhere 1)
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;; ==================== Helm ==================== ;;

(global-set-key (kbd "M-i") 'helm-swoop)
 
(require 'helm-config)

(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "C-x m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x f") 'helm-find-files)

;; helm from https://github.com/emacs-helm/helm
(require 'helm)

;; Locate the helm-swoop folder to your path
(add-to-list 'load-path "~/.emacs.d/elisp/helm-swoop")
(require 'helm-swoop)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; When doing evil-search, hand the word over to helm-swoop
;; (define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)

;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
(define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;; Move up and down like isearch
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
(define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color nil)

;; ;; Go to the opposite side of line from the end or beginning of line
(setq helm-swoop-move-to-line-cycle t)

;; Optional face for line numbers
;; Face name is `helm-swoop-line-number-face`
(setq helm-swoop-use-line-number-face t)

;; If you prefer fuzzy matching
(setq helm-swoop-use-fuzzy-match t)




;; ==================== Smex ==================== ;;

  (require 'smex) ; Not needed if you use package.el
  (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                    ; when Smex is auto-initialized on its first run.

  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-feeds
   (quote
    ("http://feeds.reuters.com/reuters/topNews?irpc=69" "http://www.independent.co.uk/rss" "http://www.telegraph.co.uk/newsfeed/rss/news-uk_news.xml" "http://www.scotsman.com/rss/cmlink/1.65694" "http://www.linuxjournal.com/node/feed" "http://www.engadget.com/rss-full.xml" "http://www.drdobbs.com/rss/all" "http://feeds.gawker.com/lifehacker/vip" "http://stallman.org/rss/rss.xml" "http://feeds.feedburner.com/entrepreneur/latest" "http://feeds.feedburner.com/codinghorror/" "http://news.com.com/2547-1_3-0-5.xml" "http://www.linuxinsider.com/perl/syndication/rssfull.pl" "http://news.ycombinator.com/rss" "http://feeds.arstechnica.com/arstechnica/index/" "https://www.youtube.com/feeds/videos.xml?channel_id=UCbrXRQHV4TOU4Pqzw325Z1A" "http://www.joelonsoftware.com/rss.xml" "http://www.hackaday.com/rss.xml" "http://www.theverge.com/rss/full.xml" "http://feeds.feedburner.com/johnpilger" "https://firstlook.org/theintercept/feed/" "http://www.morningstaronline.co.uk/index.php/news/rss/feed/latest" "http://www.newstatesman.com/feeds/online-contents.rss" "~/.emacs.d/feeds.opml")))
 '(elfeed-search-date-format (quote ("%d-%m-%YT%T" 10 :left)))
 '(elfeed-search-title-max-width 120)
 '(erc-autojoin-mode t)
 '(erc-button-mode t)
 '(erc-fill-column 120)
 '(erc-fill-mode t)
 '(erc-irccontrols-mode t)
 '(erc-list-mode t)
 '(erc-match-mode t)
 '(erc-menu-mode t)
 '(erc-move-to-prompt-mode t)
 '(erc-netsplit-mode t)
 '(erc-networks-mode t)
 '(erc-nick "caracalla")
 '(erc-noncommands-mode t)
 '(erc-pcomplete-mode t)
 '(erc-readonly-mode t)
 '(erc-ring-mode t)
 '(erc-stamp-mode t)
 '(erc-track-minor-mode t)
 '(erc-track-mode t)
 '(menu-bar-mode nil)
 '(org-trello-current-prefix-keybinding "C-c o")
 '(package-selected-packages
   (quote
    (impatient-mode web-server enh-ruby-mode free-keys emmet-mode org-pomodoro robe nlinum highlight-symbol smartparens python-mode ipython-shell-send python doom-themes elfeed org-trello org-bullets discover-my-major discover inf-ruby rvm anaconda-mode elpy vimish-fold helm-dash auto-complete grizzl multiple-cursors helm-swoop smex ido-completing-read+ helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ==================== Multiple Cursors ==================== ;;

    (require 'multiple-cursors)
    (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
    (global-set-key (kbd "C->") 'mc/mark-next-like-this)
    (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
    (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; ==================== Projectile ==================== ;;

(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)


;; ==================== Auto-Complete ==================== ;;

(ac-config-default)

;; ==================== yasnippet ==================== ;;

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; ==================== Vimish Fold ==================== ;;

(require 'vimish-fold)

;(global-set-key (kbd "<menu> v f") #'vimish-fold)
;(global-set-key (kbd "<menu> v v") #'vimish-fold-delete)

;; ==================== Python ==================== ;;

(elpy-enable)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; ==================== Ruby ==================== ;;

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(add-to-list 'load-path "~/.emacs.d/plugins/bundler.el")
(require 'bundler)

(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'compilation-filter-hook 'inf-ruby-auto-enter)

;; ==================== Discover ==================== ;;

(discover-add-context-menu
 :context-menu '(isearch
              (description "Isearch, occur and highlighting")
              (lisp-switches
               ("-cf" "Case should fold search" case-fold-search t nil))
              (lisp-arguments
               ("=l" "context lines to show (occur)"
                "list-matching-lines-default-context-lines"
                (lambda (dummy) (interactive) (read-number "Number of context lines to show: "))))
              (actions
               ("Isearch"
                ("_" "isearch forward symbol" isearch-forward-symbol)
                ("w" "isearch forward word" isearch-forward-word))
               ("Occur"
                ("o" "occur" occur))
               ("More"
                ("h" "highlighters ..." makey-key-mode-popup-isearch-highlight))))
 :bind "M-s")

;; ==================== Discover My Major Mode ==================== ;;

(global-set-key (kbd "C-h C-m") 'discover-my-major)
(global-set-key (kbd "C-h M-m") 'discover-my-mode)

;; ==================== Org-Bullets ==================== ;;

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


;; ==================== Elfeed ==================== ;;

(setq elfeed-feeds
      '("~/.emacs.d/feeds.opml"))

;; ==================== DOOM Theme ==================== ;;

(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; ==================== Comment ==================== ;;

(global-set-key (kbd "C-x #") 'comment-region)
(global-set-key (kbd "C-x '") 'uncomment-region)

;; ==================== Case Region ==================== ;;

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; ==================== Smartparens ==================== ;;

;; ========== Smartparens ========== ;;

(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">")
  (sp-local-pair "<%" "%>"))

;; ==================== Persistent Scratch ==================== ;;

(persistent-scratch-setup-default)

;; ==================== Highlight ==================== ;;

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

;; ==================== Desktop Startup ==================== ;;

(desktop-save-mode 1)

;; ==================== Linum ==================== ;;

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

;; ==================== Robe ==================== ;;

(add-hook 'ruby-mode-hook 'robe-mode)

;; ==================== Org Mode ==================== ;;

(setq org-agenda-include-diary t)

(require 'org)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/personal.org"
                             "~/org/business.org" 
                             "~/org/notes.org"))

;; ==================== Resize Windows ==================== ;;

    (global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
    (global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
    (global-set-key (kbd "C-s-<down>") 'shrink-window)
    (global-set-key (kbd "C-s-<up>") 'enlarge-window)

;; ==================== Emmet ==================== ;;

(require 'emmet-mode)

   (add-to-list 'load-path "~/.emacs.d/emmet/")
   (require 'emmet-mode)
   (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
   (add-hook 'html-mode-hook 'emmet-mode)
   (add-hook 'css-mode-hook  'emmet-mode)
   (global-set-key (kbd "C-!") 'emmet-expand-line)


;; ==================== Readline ==================== ;;

(defun read-lines (filePath) "Return a list of lines of a file at filePath." (with-temp-buffer (insert-file-contents filePath) (split-string (buffer-string) "\n" t)))

;; ==================== ERC ==================== ;;

(let ((acc (read-lines "~/.my-erc-account")))
  (setq erc-nick (car acc))  
  (setq erc-password (nth 1 acc)))

;; ==================== Global Line Numbers ==================== ;;

(global-nlinum-mode 1)


;; ==================== HTML ==================== ;;

(setq load-path (cons "path_to_html-helper-mode_directory" load-path))
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))

;; Recognize server-parsed HTML files
(setq auto-mode-alist (cons '("\\.shtml$" . html-helper-mode) auto-mode-alist))

;; Insert new document HTML template
(setq html-helper-build-new-buffer t)

;; Insert address
(setq html-helper-address-string 
  "<a href=\"your_URL\">your_name &lt;your_e-mail_address&gt;</a>")

;; Enable time stamp
(setq html-helper-do-write-file-hooks t)

;; Enable hyperlink prompt
(setq tempo-interactive t)

;; ==================== Web Development ==================== ;;

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-auto-pairing nil)

;; ==================== JSON mode ==================== ;;

(require 'json-mode)
(add-hook 'json-mode-hook 'hs-minor-mode)

;; ==================== Indentation ==================== ;;

(setq-default c-basic-offset 2)
(setq-default js-indent-level 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default web-mode-code-indent-offset 2)
