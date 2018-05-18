(define (problem pb4)
  (:domain saveGiraffes)


  (:objects 
    agent1 
    giraffe1
    giraffe2
    giraffe3
    giraffe4
    giraffe5
    giraffe6
    zoologico
    central 
    areaG1
    areaG2
    areaG3
    areaG4
    areaG5
    areaG6
  )
  
  


  (:init
    (agent agent1)
    (giraffe giraffe1)
    (giraffe giraffe2)
    (giraffe giraffe3)
    (giraffe giraffe4)
    (giraffe giraffe5)
    (giraffe giraffe6)
    
    (caretaker agent1)
    (zoo zoologico)
    (central central)
    (local zoologico)
    (local central)
    
    (local areaG1)
    (local areaG2)
    (local areaG3)
    (local areaG4)
    (local areaG5)
    (local areaG6)
    
    (at agent1 central)
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
    (at giraffe3 areaG3)
    (at giraffe4 areaG4)
    (at giraffe5 areaG5)
    (at giraffe6 areaG6)
    
    (onFire giraffe2)
    (onFire giraffe5)
    (onWater giraffe1)
    (onWater giraffe3)
    (onWater giraffe6)
    (onForest giraffe4)
  )


  (:goal 
    (and 
    (safe giraffe1)
    (safe giraffe2)
    (safe giraffe3)
    (safe giraffe4)
    (safe giraffe5)
    (safe giraffe6)
  ))
)
