;;; bundler-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "bundler" "bundler.el" (23252 40582 803081
;;;;;;  711000))
;;; Generated autoloads from bundler.el

(autoload 'bundle-open "bundler" "\
Queries for a gem name and opens the location of the gem in dired.

\(fn GEM-NAME)" t nil)

(autoload 'bundle-console "bundler" "\
Run an inferior Ruby process in the context of the current bundle.

\(fn)" t nil)

(autoload 'bundle-check "bundler" "\
Run bundle check for the current bundle.

\(fn)" t nil)

(autoload 'bundle-install "bundler" "\
Run bundle install for the current bundle.

\(fn)" t nil)

(autoload 'bundle-update "bundler" "\
Run bundle update for the current bundle.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bundler-autoloads.el ends here
