<p align="center"><b>МОНУ НТУУ КПІ ім. Ігоря Сікорського ФПМ СПіСКС</b></p>
 <p align="center">
 <b>Звіт з Розрахунково графічної роботи</b><br/>
 дисципліни "Вступ до функціонального програмування"
 </p>
 <p align="right"><b>Студент(-ка)</b>: Приймак Юліанна Павлівна КВ-23</p>
 <p align="right"><b>Рік</b>: 2025</p>
 
 ## Загальне завдання
1. Реалізувати програму для обчислення функції згідно варіанту мовою Common Lisp. 
Варіант обирається згідно списку варіантів для лабораторних робіт за модулем 16: 
1 -> 1, 2 -> 2, ..., 17 -> 1, 18 -> 2 і т.д.
2. Виконати тестування реалізованої програми.
3. Порівняти результати роботи програми мовою Common Lisp с розрахунками 
іншими засобами
 ## Варіант 5 (21)
![alt text](<task.png> "TASK")
 ## Лістинг
```lisp
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

```
