(define (problem pb1)
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
    (central central)
    (zoo zoologico)
    (local zoologico)
    (local central)
    (local areaG1)
    (local areaG2)
    (unsafe giraffe1)
    (unsafe giraffe2)
    (at agent1 central)
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
  )


  (:goal
    (and
    (safe giraffe1)
    (safe giraffe2)
  ))
)
