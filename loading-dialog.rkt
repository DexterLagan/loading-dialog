#lang racket/gui

;; a generic loading dialog
(define loading-dialog
  (let* ((new-dialog (new dialog%
                          [label "Loading"]
                          [parent #f]
                          [width 225]
                          [height 80]
                          [min-width 225]
                          [min-height 80]
                          [stretchable-width #f]
                          [stretchable-height #f]))
         (new-panel (new vertical-panel% [parent new-dialog]
                         [alignment '(center center)]))
         (new-message (new message% [parent new-panel]
                           [label "Please wait..."])))
    new-dialog))

; Helper function to show the loading dialog
(define (show-loading)
  (send loading-dialog show-without-yield))

; Helper function to hide the loading dialog
(define (hide-loading)
  (send loading-dialog show #f))
  

; EOF
