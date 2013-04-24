(require 'rinari)
(require 'smartparens-config)

(electric-indent-mode 1)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x C-m") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; navigation & marks
(global-set-key (kbd "C-c C-c C-i") 'imenu-anywhere)
(global-set-key (kbd "C-c C-y") 'browse-kill-ring)
(global-set-key (kbd "C-c C-e") 'eval-buffer)
(global-set-key [remap goto-line] 'goto-line-with-feedback)
(global-set-key "\C-x\C-\\" 'goto-last-change)
(global-set-key "%" 'match-paren)
(global-set-key (kbd "C-`") 'push-mark-no-activate)
(global-set-key (kbd "M-`") 'jump-to-mark)
(global-set-key (kbd "C-c C-c C-f") 'ffap)
(global-set-key (kbd "C-x C-r") 'prelude-sudo-edit)
(global-set-key (kbd "M-H") 'prelude-switch-to-previous-buffer)

;; variables
(setq projectile-show-paths-function 'projectile-hashify-with-relative-paths)
(setq mac-right-option-modifier 'control)
(setq ack-and-a-half-arguments "")
(setq coffee-command "coffee")
