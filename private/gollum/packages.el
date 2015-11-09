;;; packages.el --- gollum Layer packages File for Spacemacs
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
(setq gollum-packages
    '(
      ;; package names go here
      f
      s
      helm-ag
      ))

;; List of packages to exclude.
(setq gollum-excluded-packages '())

;; For each package, define a function gollum/init-<package-name>
;;
(defun gollum/init-f ()
  "Initialize my package"
  )
(defun gollum/init-s ()
  "Initialize my package"
  )
(defun gollum/init-helm-ag ()
  "Initialize my package"
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
