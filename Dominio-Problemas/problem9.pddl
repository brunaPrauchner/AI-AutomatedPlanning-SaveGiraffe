(define (problem pb9)
  (:domain saveGiraffes)


  (:objects 
    agent1
    agent2
    agent3
    
    giraffe1
    giraffe2
    giraffe3
    giraffe4
    
    areaG1
    areaG2
    areaG3
    areaG4
    
    zoologico
    hospital
    central 
  )
  
  


  (:init
    (agent agent1)
    (agent agent2)
    (agent agent3)
    
    (giraffe giraffe1)
    (giraffe giraffe2)
    (giraffe giraffe3)
    (giraffe giraffe4)
    
    
    (zoo zoologico)
    (central central)
    (hosp hospital)
    
    (local zoologico)
    (local central)
    (local hospital)
    (local areaG1)
    (local areaG2)
    (local areaG3)
    (local areaG4)
    
    (at agent1 central)
    (at agent2 central)
    (at agent3 central)
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
    (at giraffe3 areaG3)
    (at giraffe4 areaG4)
    
    (onFire giraffe1)
    (onForest giraffe2)
    (onWater giraffe3)
    
    (harmed giraffe1)
    (harmed giraffe2)
    (harmed giraffe3)
    (inPain giraffe4)
  )


  (:goal 
    (and 
    (safe giraffe1)
    (safe giraffe2)
    (safe giraffe3)
    (safe giraffe4)
  ))
)
