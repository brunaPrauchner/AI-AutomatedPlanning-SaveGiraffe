(define (problem pb2)
  (:domain saveGiraffes)


  (:objects 
    agent1 
    giraffe1
    giraffe2
    zoologico
    central 
    areaG1
    areaG2
  )
  


  (:init
    (agent agent1)
    (giraffe giraffe1)
    (giraffe giraffe2)
    (caretaker agent1)
    (zoo zoologico)
    (central central)
    (local zoologico)
    (local central)
    (local areaG1)
    (local areaG2)
    (at agent1 central)
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
    (onFire giraffe1)
  )


  (:goal 
    (and 
    (safe giraffe1)
    (safe giraffe2)
  ))
)
