;; cycle-buffer
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(load "cycle-buffer.el")

;; displays time in the modeline
(display-time)

;; get rid of ~ backup files
(setq makeo-backup-files nil)

;; get rid of that damned beep
;; this has different effects on
;; different systems
(setq visible-bell t)

;; highlight selected text
(transient-mark-mode t)

;; turns on the column number mode
(column-number-mode t)

;; turns on line number mode
(line-number-mode t)

;; shows the corresponding parenthesis
(show-paren-mode t)

;; stops C-n from adding lines at the end
;; of the file
(setq next-line-add-newlines nil)

;; set the default screen properties for 
;; all frames
(setq default-frame-alist
      '((cursor-color . "Red")
		(background-color . "Gainsboro")
		(height . 55)
		(width . 132)
		(left . 120)
		(top . 30)
		(name . "vi sucks.")
		(vertical-scroll-bars . right)))



;; Turn on font-lock in all modes that support it
(if (fboundp 'global-font-lock-mode)
       (global-font-lock-mode t))

;; Maximum colors
(setq font-lock-maximum-decoration t)

;; Adds a final newline if needed
(setq require-final-newline nil)

;; This is for gnus stuff
;(setq gnus-select-method '(nntp "news.waymark.net"))

;; buffer cycling using bs.el
;(require 'bs)
;(load '"/emacs/lisp/ibs.el")
;(global-set-key [left]  'bs-cycle-previous)
;(global-set-key [right] 'bs-cycle-next)
;(global-set-key [up]    'ibs-select)

;; define some keys
(global-set-key [M-s] 're-search-forward)

(global-set-key [f3] 'goto-line)
(global-set-key [f4] 'other-window)
(global-set-key [C-f4] 'switch-to-buffer)

(global-set-key [f5] 'advertised-undo)
(global-set-key [f6] 'set-variable)
(global-set-key [f7] 'copy-region-as-kill)
(global-set-key [f8] 'outline-mode)

(global-set-key [f9] 'delete-other-windows)
(global-set-key [f10] 'delete-frame)
(global-set-key [f11] 'spook)              ;; SunF36 is f11 on my keyboard
(global-set-key [f12] 'kill-this-buffer)



;; buffer cylcing
(autoload 'cycle-buffer "cycle-buffer" "Cycle forward." t)
(autoload 'cycle-buffer-backward "cycle-buffer" "Cycle backward." t)
(global-set-key [right] 'cycle-buffer)
(global-set-key [left] 'cycle-buffer-backward)

;; Sets up the smooth scrolling
(setq scroll-margin 3)
(setq scroll-conservatively 2)


;; Get calc ready to go
;(setq load-path (append load-path (list "c:/emacs/lisp/calc-2.02f")))
;(autoload 'calc-dispatch          "calc" "Calculator Options" t)
;(autoload 'full-calc              "calc" "Full-screen Calculator" t)
;(autoload 'full-calc-keypad       "calc" "Full-screen X Calculator" t)
;(autoload 'calc-eval              "calc" "Use Calculator from Lisp")
;(autoload 'defmath                "calc" nil t t)
;(autoload 'calc                   "calc" "Calculator Mode" t)
;(autoload 'quick-calc             "calc" "Quick Calculator" t)
;(autoload 'calc-keypad            "calc" "X windows Calculator" t)
;(autoload 'calc-embedded          "calc" "Use Calc from any buffer" t)
;(autoload 'calc-embedded-activate "calc" "Activate =>'s in buffer" t)
;(autoload 'calc-grab-region       "calc" "Grab region of Calc data" t)
;(autoload 'calc-grab-rectangle    "calc" "Grab rectangle of data" t)

;; open dired in the starting directory
(dired default-directory)

;; customer variables
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(standard-indent 4)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))
 '(tab-width 4))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; hook for text mode
;(add-hook 'text-mode-hook 
;		  (function (lambda ()
;					  (auto-fill-mode))))

;; This avoids text-mode
;; I happen to like the paragraph formatting of fundamental-mode
(setq auto-mode-alist (append '(("\\.te?xt\\'" . auto-fill-mode)) 
							  (cdr auto-mode-alist)))


(require 'cl)
