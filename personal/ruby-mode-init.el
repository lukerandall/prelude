(defun rgc-show-ruby-tags ()
  "A poor man's taglist; shows the general structure of a Ruby class."
  (interactive)
  (occur "^\\s-*\\\(class \\\|module \\\|def \\\|[^:]include \\\|private\\b\\\|protected\\b\\\)"))

(add-hook 'ruby-mode-hook 'robe-mode)

;; - M-. to jump to the definition
;; - M-, to jump back
;; - C-c C-d to see the documentation
;; - C-c C-k to refresh Rails environment
;; - C-M-i to complete the symbol at point
