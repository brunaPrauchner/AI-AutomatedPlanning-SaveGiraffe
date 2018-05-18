(define (problem pb7)
  (:domain saveGiraffes)


  (:objects 
    agent1
    giraffe1
    zoologico
    hospital
    central 
    areaG1
  )
  
  


  (:init
    (agent agent1)
    
    (giraffe giraffe1)
   
    
    (zoo zoologico)
    (central central)
    (hosp hospital)
    
    (local zoologico)
    (local central)
    (local hospital)
    (local areaG1)
    
    (at agent1 central)
    
    (at giraffe1 areaG1)
    (onWater giraffe1)
    (inPain giraffe1)
  )


  (:goal 
    (and 
    (safe giraffe1)
  ))
)
