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
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "5c64430cb8e12e2486cd9f74d4ce5172e00f8e633095d27edd212787a4225245" "1342a81078bdac27f80b86807b19cb27addc1f9e4c6a637a505ae3ba4699f777" default)))
 '(default-frame-alist (quote ((undecorated . t))))
 '(fci-rule-color "#383838")
 '(fill-column 100)
 '(package-selected-packages
   (quote
    (robe grizzl helm-projectile projectile smartparens ag nlinum calfw-cal org-journal ac-html god-mode cyberpunk-theme pdf-tools discover anaconda-mode hideshow-org helm-swoop helm org ace-window highlight-symbol js2-highlight-vars ac-inf-ruby enh-ruby-mode python-mode python green-is-the-new-black-theme fill-column-indicator auto-complete)))
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

(find-file "/tmp/notes") 

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
