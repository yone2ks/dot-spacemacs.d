;;; packages.el --- viewer Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq viewer-packages
    '(
      ;; package names go here
      viewer
      ))

;; List of packages to exclude.
(setq viewer-excluded-packages '())

;; For each package, define a function viewer/init-<package-name>
;;
(defun viewer/init-viewer ()
  (require 'viewer)
  ;; 書き込み不能ファイルではview-modeから抜けない
  (viewer-stay-in-setup)

  ;; viewモードの場合, モードラインの色を変える
  (setq viewer-modeline-color-unwritable "tomato")
  (setq viewer-modeline-color-view "orange")
  (viewer-change-modeline-color-setup)

  ;; キーバインドの設定
  (bind-keys :map view-mode-map
             ("h" . backward-word)
             ("l" . forward-word)
             ("j" . next-line)
             ("k" . previous-line)
             (";" . gene-word)
             ("b" . scroll-down)
             ("<space>" . scroll-down)
             (" " . scroll-up))
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
