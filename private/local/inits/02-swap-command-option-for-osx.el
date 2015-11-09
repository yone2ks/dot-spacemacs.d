;; MacOS Xの場合, Command-KeyとOption-Keyを入れ替える
(if (featurep 'ns)
    (progn 
    (setq ns-command-modifier (quote meta))
    (setq ns-alternate-modifier (quote super))))

