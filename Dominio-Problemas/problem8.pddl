(define (problem pb8)
  (:domain saveGiraffes)


  (:objects 
    agent1
    agent2
    giraffe1
    zoologico
    hospital
    central 
    areaG1
  )
  
  


  (:init
    (agent agent1)
    (agent agent2)
    (giraffe giraffe1)
   
    
    (zoo zoologico)
    (central central)
    (hosp hospital)
    
    (local zoologico)
    (local central)
    (local hospital)
    (local areaG1)
    
    (at agent1 central)
    (at agent2 central)
    (at giraffe1 areaG1)
    (onWater giraffe1)
    
    (harmed giraffe1)
  )


  (:goal 
    (and 
    (safe giraffe1)
  ))
)
