(defun haskell-style ()
  "Sets the current buffer to use Haskell Style. Meant to be
  added to `haskell-mode-hook'"
  (interactive)
  (setq tab-width 8
        haskell-indentation-layout-offset 4
        haskell-indentation-left-offset 4
        haskell-indentation-ifte-offset 4))

(custom-set-variables
    '(haskell-process-suggest-remove-import-lines t)
    '(haskell-process-auto-import-loaded-modules t)
    '(haskell-process-suggest-hoogle-imports t)
    '(haskell-process-log t))

(define-key haskell-mode-map [f8] 'haskell-navigate-imports)

(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'haskell-style)

(add-to-list 'completion-ignored-extensions ".hi")

(setq ghc-display-error 'minibuffer)

(custom-set-variables
    '(haskell-process-type 'cabal-repl))

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
     (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)
     (define-key haskell-mode-map (kbd "C-c C-h") 'haskell-hoogle)
     (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile)
     (define-key haskell-mode-map (kbd "C-c C-f") 'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
     (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
     (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c C-.") 'haskell-sort-imports)))

(eval-after-load "haskell-cabal"
  '(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-compile))

(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-c M-.") nil)
     (define-key haskell-mode-map (kbd "C-c C-d") nil)))

(add-hook 'align-load-hook (lambda ()
     (add-to-list 'align-rules-list
                  '(haskell-types
                    (regexp . "\\(\\s-+\\)\\(::\\|∷\\)\\s-+")
                    (modes quote (haskell-mode literate-haskell-mode))))
     (add-to-list 'align-rules-list
                  '(haskell-assignment
                    (regexp . "\\(\\s-+\\)=\\s-+")
                    (modes quote (haskell-mode literate-haskell-mode))))
     (add-to-list 'align-rules-list
                  '(haskell-arrows
                    (regexp . "\\(\\s-+\\)\\(->\\|→\\)\\s-+")
                    (modes quote (haskell-mode literate-haskell-mode))))
     (add-to-list 'align-rules-list
                  '(haskell-left-arrows
                    (regexp . "\\(\\s-+\\)\\(<-\\|←\\)\\s-+")
                    (modes quote (haskell-mode literate-haskell-mode))))
     (add-to-list 'align-rules-list
                  '(haskell-heist-splices
                    (regexp . "\\(\\s-+\\)##\\s-+")
                    (modes quote (haskell-mode literate-haskell-mode))))
     (add-to-list 'align-rules-list
                  '(haskell-comments
                    (regexp . "\\(\\s-+\\)--\\s-+")
                    (modes quote (haskell-mode literate-haskell-mode))))))

(custom-set-variables
   '(haskell-tags-on-save t))


(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
