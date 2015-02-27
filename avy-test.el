(require 'ert)
(require 'avy)

(ert-deftest avy-subdiv ()
  (should
   (equal (avy-subdiv 5 4)
          '(1 1 1 2)))
  (should
   (equal (avy-subdiv 10 4)
          '(1 1 4 4)))
  (should
   (equal (avy-subdiv 16 4)
          '(4 4 4 4)))
  (should
   (equal (avy-subdiv 17 4)
          '(4 4 4 5)))
  (should
   (equal (avy-subdiv 27 4)
          '(4 4 4 15)))
  (should
   (equal (avy-subdiv 50 4)
          '(4 14 16 16)))
  (should
   (equal (avy-subdiv 65 4)
          '(16 16 16 17))))

(ert-deftest avy-read ()
  (should
   (equal
    (avy-read '(0 1 2 3 4 5 6 7 8 9 10)
              '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
    '((97 . 0)
      (115 . 1)
      (100 . 2)
      (102 . 3)
      (103 . 4)
      (104 . 5)
      (106 . 6)
      (107 . 7)
      (108 (97 . 8)
       (115 . 9)
       (100 . 10))))))
