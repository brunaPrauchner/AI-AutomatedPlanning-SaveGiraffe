(define (problem pb3)
  (:domain saveGiraffes)


  (:objects 
    agent1 
    giraffe1
    giraffe2
    giraffe3
    zoologico
    central 
    areaG1
    areaG2
    areaG3
  )
  


  (:init
    (agent agent1)
    (giraffe giraffe1)
    (giraffe giraffe2)
    (giraffe giraffe3)
    (caretaker agent1)
    (zoo zoologico)
    (central central)
    (local zoologico)
    (local central)
    (local areaG1)
    (local areaG2)
    (local areaG3)
    (at agent1 central)
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
    (at giraffe3 areaG3)
    (onFire giraffe1)
    (onWater giraffe3)
  )


  (:goal 
    (and 
    (safe giraffe1)
    (safe giraffe2)
    (safe giraffe3)
  ))
)
