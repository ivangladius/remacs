
(require 'ryo-modal)

(use-package smex
  :ensure t)

(use-package imenu-anywhere
  :ensure t
  :defer t)

(use-package ivy
  :ensure t
  :init
  (setq ivy-use-virtual-buffers t
	enable-recursive-minibuffers t
	ivy-height 25)
  :ryo
  ("M-s" ivy-imenu-anywhere)
  ("M-a" counsel-ag)
  ("M-x" counsel-M-x)
  ("M-l" swiper)
  ("SPC ]" counsel-yank-pop)
  ("SPC i"
   (("e" counsel-find-file)
    ("r" counsel-recentf)))
  ("SPC f"
   (("e" ivy-switch-buffer)))
  :config
  (ivy-mode)
  (define-key ivy-minibuffer-map (kbd "<tab>") #'ivy-alt-done))


  
