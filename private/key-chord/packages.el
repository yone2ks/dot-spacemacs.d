;;; packages.el --- key-chord Layer packages File for Spacemacs
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
(setq key-chord-packages
    '(
      ;; package names go here
      key-chord
      ))

;; List of packages to exclude.
(setq key-chord-excluded-packages '())

;; For each package, define a function key-chord/init-<package-name>
;;
(defun key-chord/init-key-chord ()
  "Initialize my package"
  (use-package key-chord
    :config
    (setq key-chord-two-keys-delay 0.04)
    (key-chord-mode 1)
    (key-chord-define-global "jk" 'view-mode)
    )
  )

;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
