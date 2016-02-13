;; org-mode起動時はskkカナモードで, show-all, 画像を表示する. 
(add-hook 'org-mode-hook
          (lambda ()
            (skk-mode t)
            (skk-latin-mode t)
            (show-all)
            (turn-on-iimage-mode)))


;; GTD関連の設定
(setq org-directory "~/org")
(setq org-agenda-files (list org-directory))

;; キーバインドの設定
(bind-key* "C-c C-s" 'org-schedule)
