(require 'rinari)
(require 'smartparens-config)

(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; navigation & marks
(global-set-key (kbd "C-c C-c C-i") 'imenu-anywhere)
(global-set-key (kbd "C-c C-y") 'browse-kill-ring)
(global-set-key (kbd "C-c C-e") 'eval-buffer)
(global-set-key [remap goto-line] 'goto-line-with-feedback)
(global-set-key "\C-x\C-\\" 'goto-last-change)
(global-set-key "%" 'match-paren)
(global-set-key (kbd "M-`") 'jump-to-mark)
(global-set-key (kbd "C-c C-c C-f") 'ffap)
(global-set-key (kbd "C-x C-r") 'prelude-sudo-edit)
(global-set-key (kbd "M-H") 'prelude-switch-to-previous-buffer)

(define-key global-map [?\s-d] 'projectile-find-dir)
(define-key global-map [?\s-e] 'er/expand-region)
(define-key global-map [?\s-f] 'projectile-find-file)
(define-key global-map [?\s-s] 'projectile-switch-project)
(define-key global-map [?\s-a] 'projectile-ack)
(define-key global-map [?\s-j] 'prelude-top-join-line)
(define-key global-map [?\s-k] 'prelude-kill-whole-line)
(define-key global-map [?\s-l] 'goto-line)
(define-key global-map [?\s-m] 'magit-status)
(define-key global-map [?\s-w] 'delete-window)
(define-key global-map [?\s-x] 'exchange-point-and-mark)
(define-key global-map [?\s-p] 'dash-at-point)
(define-key global-map [?\s-r] 'split-window-right)

;; key chords
(key-chord-define-global "jf" 'projectile-find-file)

;; variables
(setq projectile-show-paths-function 'projectile-hashify-with-relative-paths)
(setq mac-right-option-modifier 'control)
(setq ack-and-a-half-arguments "")
(setq coffee-command "coffee")

(setq gc-cons-threshold 20000000)
