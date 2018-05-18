(define (problem pb10)
  (:domain saveGiraffes)


  (:objects 
    agent1
    agent2
    agent3
    agent4
    agent5
    
    giraffe1
    giraffe2
    giraffe3
    giraffe4
    giraffe5
    
    giraffe6
    giraffe7
    giraffe8
    giraffe9
    giraffe10
    
    areaG1
    areaG2
    areaG3
    areaG4
    areaG5
    
    areaG6
    areaG7
    areaG8
    areaG9
    areaG10
    
    zoologico
    hospital
    central 
  )
  
  


  (:init
    (agent agent1)
    (agent agent2)
    (agent agent3)
    (agent agent4)
    (agent agent5)
    
    (giraffe giraffe1)
    (giraffe giraffe2)
    (giraffe giraffe3)
    (giraffe giraffe4)
    
    (giraffe giraffe5)
    (giraffe giraffe6)
    (giraffe giraffe7)
    (giraffe giraffe8)
    
    (giraffe giraffe9)
    (giraffe giraffe10)
    
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
    (local areaG5)
    (local areaG6)
    (local areaG7)
    (local areaG8)
    (local areaG9)
    (local areaG10)
    
    
    (at agent1 central)
    (at agent2 central)
    (at agent3 central)
    (at agent4 central)
    (at agent5 central)
    
    
    (at giraffe1 areaG1)
    (at giraffe2 areaG2)
    (at giraffe3 areaG3)
    (at giraffe4 areaG4)
    (at giraffe5 areaG5)
    (at giraffe6 areaG6)
    (at giraffe7 areaG7)
    (at giraffe8 areaG8)
    (at giraffe9 areaG9)
    (at giraffe10 areaG10)
    
    
    
    
    (onFire giraffe1)
    (onFire giraffe9)
    (onFire giraffe7)
    (onFire giraffe5)
    
    
    (onForest giraffe2)
    (onForest giraffe6)
    
    (onWater giraffe3)
    (onWater giraffe4)
    (onWater giraffe8)    
        
        
    (harmed giraffe1)
    (harmed giraffe2)
    (harmed giraffe3)
    (harmed giraffe4)
    (harmed giraffe5)
    
    (inPain giraffe7)    
    (inPain giraffe8)
    (inPain giraffe9)
  )


  (:goal 
    (and 
    (safe giraffe1)
    (safe giraffe2)
    (safe giraffe3)
    (safe giraffe4)
    (safe giraffe5)
    (safe giraffe6)
    (safe giraffe7)
    (safe giraffe8)
    (safe giraffe9)
    (safe giraffe10)
  ))
)
