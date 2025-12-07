(defun F_f ()
  (let ((F (make-array 21 :initial-element 0.0)))
    (setf (aref F 1) 1.0)
    (setf (aref F 11) 1.0)

    (loop for i from 2 to 10 do
         (setf (aref F i)
               (* (aref F (1- i)) (log i) 8)))

    (loop for i from 12 to 20 do
         (setf (aref F i)
               (/ (* (aref F (1- i)) (log i)) 8))) F))

(defun printr (F)
  (format t "~%F(i):~%")
  (loop for i from 1 to 20 do
       (format t "F(~d) = ~f~%" i (aref F i))))

(defun main ()
  (let ((result (F_f)))
    (printr result)))

(main)
