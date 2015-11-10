;;; packages.el --- tabbar Layer packages File for Spacemacs
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
(setq tabbar-packages
    '(
      ;; package names go here
      tabbar
      ))

;; List of packages to exclude.
(setq tabbar-excluded-packages '())

;; For each package, define a function tabbar/init-<package-name>
;;
(defun tabbar/init-tabbar ()
  (require 'tabbar)
  (tabbar-mode)
  ;; グループ化しない
  (setq tabbar-buffer-groups-function nil)
  ;; scratchバッファ以外で「*」が付いたバッファは表示しない
  (setq tabbar-buffer-list-function
        (lambda ()
          (remove-if
           (lambda(buffer)
             (unless (or (string= (buffer-name buffer) "*scratch*") (string= (buffer-name buffer) "*init log*") (string= (buffer-name buffer) "*eshell*"))
               (find (aref (buffer-name buffer) 0) " *"))
             )
           (buffer-list))))
  ;; キーバインドの設定
  (bind-key* "C-," 'tabbar-backward)
  (bind-key* "C-." 'tabbar-forward)
  "Initialize my package"
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
