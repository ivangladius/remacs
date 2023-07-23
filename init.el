(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


;; (defun my-byte-compile-dest-file (source-file)
;;   (concat (file-name-directory source-file)
;;           "prefix-"
;;           (file-name-base source-file)
;;           "-compiled"))

;; (setq byte-compile-dest-file-function 'my-byte-compile-dest-file)


;; (byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

;;(package-install 'bind-key)
;;(package-install 'use-package)

(require 'bind-key)

(load "~/.emacs.d/paredit")

(load "~/.emacs.d/editing")

(load "~/.emacs.d/window")

(load "~/.emacs.d/ryo-modal")

(load "~/.emacs.d/settings")


(load "~/.emacs.d/scripts")

(load "~/.emacs.d/ivy")

;;(load "~/.emacs.d/fido")

;;(load "~/.emacs.d/helm")

(load "~/.emacs.d/python")

(load "~/.emacs.d/ace-window")

(load "~/.emacs.d/sly")

(load "~/.emacs.d/treemacs")

(load "~/.emacs.d/avy-mode")

(load "~/.emacs.d/lsp-mode")

(load "~/.emacs.d/magit")

(load "~/.emacs.d/projectile")

(load "~/.emacs.d/subprograms")

(load "~/.emacs.d/winner")

(load "~/.emacs.d/perspective")

(load "~/.emacs.d/stumpwm")

(setq inferior-lisp-program "sbcl")

(shell-command "setxkbmap -option caps:escape && xset r rate 200 40")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "5586a5db9dadef93b6b6e72720205a4fa92fd60e4ccfd3a5fa389782eab2371b" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "7e068da4ba88162324d9773ec066d93c447c76e9f4ae711ddd0c5d3863489c52" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71" "4ff1c4d05adad3de88da16bd2e857f8374f26f9063b2d77d38d14686e3868d8d" "1aa4243143f6c9f2a51ff173221f4fd23a1719f4194df6cef8878e75d349613d" "2f8eadc12bf60b581674a41ddc319a40ed373dd4a7c577933acaff15d2bf7cc6" "f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc" "683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" default))
 '(package-selected-packages
   '(stumpwm-mode stumpwm realgud change-inner quickrun dap-mode pyvenv helm fido-mode fido projectile-ripgrep imenu-anywhere perspective straight vterm auto-sudoedit winner-mode treemmacs-all-the-icons treemacs-all-the-icons treemacs-projectile sr-speedbar block-nav ccls avy-mode nav-flash js2-mode projectile magit smartparens lsp-ivy lsp-java lsp-pyright lsp-ui lsp-mode paredit rainbow-delimiters sly company ace-window counsel smex doom-themes which-key ryo-modal use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
