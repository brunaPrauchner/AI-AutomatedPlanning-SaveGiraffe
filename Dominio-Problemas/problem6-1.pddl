(define (problem pb61)
  (:domain saveGiraffes)


  (:objects 
    agent1 
    agent2
    agent3
    agent4
    giraffe1
    giraffe2
    giraffe3
    giraffe4
    giraffe5
    zoologico
    central 
    areaG1
    areaG2
    areaG3
    areaG4
    areaG5
  )
  
  


  (:init
    (agent agent1)
    (agent agent2)
    (agent agent3)
    (agent agent4)
    
    (giraffe giraffe1)
    (giraffe giraffe2)
    (giraffe giraffe3)
    (giraffe giraffe4)
    (giraffe giraffe5)
    
    (caretaker agent1)
    (lifeguard agent2)
    (rescuer agent3)
    (fireman agent4)
    
    (zoo zoologico)
    (central central)
    (local zoologico)
    (local central)
    
    (local areaG1)
    (local areaG2)
    (local areaG3)
    (local areaG4)
    (local areaG5)
    
    (at agent1 central)
    (at agent2 central)
    (at agent3 central)
    (at agent4 central)
    
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
    (at giraffe3 areaG3)
    (at giraffe4 areaG4)
    (at giraffe5 areaG5)
    
    (onForest giraffe2)
    (onForest giraffe3)
    (onWater giraffe1)
    (onWater giraffe4)
    (onFire giraffe5)
  )


  (:goal 
    (and 
    (safe giraffe1)
    (safe giraffe2)
    (safe giraffe3)
    (safe giraffe4)
    (safe giraffe5)
  ))
)
