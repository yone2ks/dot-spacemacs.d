;;; packages.el --- init-loader Layer packages File for Spacemacs
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
(setq init-loader-packages
    '(
      ;; package names go here
      init-loader
      ))

;; List of packages to exclude.
(setq init-loader-excluded-packages '())

;; For each package, define a function init-loader/init-<package-name>
;;
(defun init-loader/init-init-loader ()
  "Initialize my package"
  (use-package init-loader
    :config
    (let ( (default-directory
             (file-name-as-directory (concat user-emacs-directory "private/local/site-lisp"))))
      (add-to-list 'load-path default-directory)

      (normal-top-level-add-subdirs-to-load-path))
    
    (setq init-loader-show-log-after-init 'error-only)
    (init-loader-load "~/.emacs.d/private/local/inits") 
    )
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
