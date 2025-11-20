(require 'd:better-theme-switching)
(require 'sketch-themes)
(require 'almost-mono-themes)
(require 'modus-themes)


;;
;;
;; To choose a face for customization, the following are useful
;; - `list-faces-display' - display full range of faces to choose from
;; - C-u C-x =            - display list of faces overlaying current line
;; - `describe-face'      - list attributes of a given face
;;
(d/defthemes
 (almost-mono-white     :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#5a5a5a")
                                                     :foreground "#000000"
                                                     :background "#c8c8c8")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#a3a3a3")
                                                     :foreground "#585858"
                                                     :background "#e6e6e6")

                                 (set-face-attribute 'show-paren-match-expression nil
                                                     :background "#dddddd"
                                                     :inherit nil)))

 ;; (almost-mono-cream  :before ((mapc #'disable-theme custom-enabled-themes)))
 ;; (almost-mono-gray   :before ((mapc #'disable-theme custom-enabled-themes)))
 ;; (almost-mono-black  :before ((mapc #'disable-theme custom-enabled-themes)))

 (sketch-white          :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#5a5a5a")
                                                     :foreground "#000000"
                                                     :background "#c8c8c8")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#a3a3a3")
                                                     :foreground "#585858"
                                                     :background "#e6e6e6")

                                 (set-face-attribute 'show-paren-match-expression nil
                                                     :background "#dddddd"
                                                     :inherit nil)))

 (modus-vivendi         :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#959595")
                                                     :foreground "#ffffff"
                                                     :background "#505050")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#606060")
                                                     :foreground "#969696"
                                                     :background "#2d2d2d")))

 (modus-operandi-tinted :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#5a5a5a")
                                                     :foreground "#000000"
                                                     :background "#c8c8c8")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#a3a3a3")
                                                     :foreground "#585858"
                                                     :background "#e6e6e6")))

 (modus-operandi-tinted :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#7fff00")
                                                     :foreground "#000000"
                                                     :background "chartreuse1")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#66cd00")
                                                     :foreground "#000000"
                                                     :background "chartreuse3")))

 (modus-operandi-tinted :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#ffff00")
                                                     :foreground "#000000"
                                                     :background "yellow1")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#cdcd00")
                                                     :foreground "#000000"
                                                     :background "yellow3")))

 (modus-operandi-tinted :before ((mapc #'disable-theme custom-enabled-themes))
                        :after  ((set-face-attribute 'mode-line nil
                                                     :box '(:line-width (1 . 1) :color "#5a5a5a")
                                                     :foreground "#000000"
                                                     :background "cyan")

                                 (set-face-attribute 'mode-line-inactive nil
                                                     :box '(:line-width (1 . 1) :color "#00cdcd")
                                                     :foreground "#000000"
                                                     :background "cyan3"))))

;; loads first theme. Subsequent calls load the next
(d/load-next-theme)
(provide 'd:theme)
