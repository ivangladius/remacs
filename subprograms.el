
(require 'ryo-modal)

(use-package isearch
  :config
  (define-key isearch-mode-map (kbd "<escape>") #'isearch-exit)
  (define-key isearch-mode-map (kbd "M-l") #'isearch-repeat-forward)
  (define-key isearch-mode-map (kbd "M-m") #'isearch-repeat-backward))

(defun isearch-my-exit ()
  (interactive)
  (isearch-exit)
  (backward-char))


(use-package auto-sudoedit
  :ensure t
  :demand t
  :config
  (auto-sudoedit-mode 1))

(use-package vterm
  :ensure t)


(defun my-gdb-other-frame ()
  (interactive)
  (select-frame (make-frame))
  (call-interactively 'gdb))



;; ###### ESHELL

(require 'esh-mode)

(defun eshell-beginning-of-line ()
  "when pressing beginning of line go to $ sign instead of complete left of screen"
  (interactive)
  (re-search-backward "$" nil t nil)
  (message "hello"))


(ryo-modal-major-mode-keys
 'eshell-mode
 ("a" eshell-bol)
 ("w" eshell-bol)
 ("b" eshell-bol :exit t))


(defun spawn-gef ()
  (interactive)
  (call-process-shell-command "kitty&" nil 0))

(global-set-key (kbd "M-3") #'spawn-gef)
