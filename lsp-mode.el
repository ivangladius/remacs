

(require 'ryo-modal)
(require 'window)

(use-package disaster
  :ensure t
  :defer t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package company
  :ensure t
  :demand t
  :config
  (setq company-dabbrev-downcase 0)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (define-key company-active-map (kbd "<tab>") #'company-complete-selection)
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd "RET") nil)
  (global-company-mode))


(use-package lsp-mode
  :ensure t
  :ryo
  ("g"
   (("d" lsp-find-definition)
	("D" my-lsp-find-definition-new-window)
    ("r" lsp-find-references)
    ("s" lsp-ivy-global-workspace-symbol)
	("S" my-lsp-ivy-global-workspace-symbol-new-window)
	("o" xref-go-back)))
  :config
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-idle-delay 0.500)
  (setq lsp-log-io nil)

  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-ui-doc-enable nil)
  (setq lsp-lens-enable nil)
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-sideline-show-code-actions nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-modeline-code-actions-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-signature-auto-activate nil))


(require 'lsp-mode)

(defun screen-full-p ()
  "if more then 2 windows are there return true"
  (and (>= (count-windows) 2) t))

(defun my-lsp-find-definition-new-window ()
  "open definition in vertical split window"
  (interactive)
  (if (screen-full-p)
	  (split-below)
	(split-right))
	(call-interactively 'lsp-find-definition))

(defun my-lsp-ivy-global-workspace-symbol-new-window ()
  (interactive)
  (if (screen-full-p)
	  (split-below)
	(split-below))
  (call-interactively 'lsp-ivy-global-workspace-symbol))



(use-package lsp-ui
  :ensure t)

;; PYTHON
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright))))


;; (use-package lsp-java
;;   :ensure t
;;   :hook (java-mode . (lambda ()
;;                        (require 'lsp-java))))

(use-package ccls
  :ensure t
  :hook (c-mode . (lambda ()
		    (require 'ccls))))

(use-package lsp-ivy
  :ensure t)

(use-package smartparens
  :ensure t)

 (use-package dap-mode
   :ensure t
   :config
   (setq dap-auto-configure-mode t))



