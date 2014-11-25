(setq svg (svg-create 800 800 :stroke "orange" :stroke-width 5))
(svg-gradient svg "gradient" 'linear '(0 . "red") '(100 . "blue"))
(save-excursion (goto-char (point-max)) (svg-insert-image svg))
(svg-rectangle svg 100 100 500 500 :gradient "gradient" :id "rec1")
(svg-circle svg 500 500 100 :id "circle1")
(svg-ellipse svg 100 100 50 90 :stroke "red" :id "ellipse1")
(svg-line svg 100 190 50 100 :id "line1" :stroke "yellow")
(svg-polyline svg '((200 . 100) (500 . 450) (80 . 100))
	      :stroke "green" :id "poly1")
(svg-polygon svg '((100 . 100) (200 . 150) (150 . 90))
	     :stroke "blue" :fill "red" :id "gon1")

  
