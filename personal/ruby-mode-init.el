(defun rgc-show-ruby-tags ()
  "A poor man's taglist; shows the general structure of a Ruby class."
  (interactive)
  (occur "^\\s-*\\\(class \\\|module \\\|def \\\|[^:]include \\\|private\\b\\\|protected\\b\\\)"))

(define-key ruby-mode-map (kbd "C-c C-t") 'rgc-show-ruby-tags)
