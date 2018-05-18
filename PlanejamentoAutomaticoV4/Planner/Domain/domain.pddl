(define (domain saveGiraffes)
    (:requirements :strips :typing :negative-preconditions :disjunctive-preconditions)

    (:predicates
        (agent ?a)
        (caretaker ?a)
        (fireman ?a)
        (lifeguard ?a)
        (rescuer ?a)
        (nurse ?a)
        (doctor ?a)
        
        (local ?l)
        (zoo ?l)
        (central ?l)
        (hosp ?l)
        (at ?a ?l)
        
        (giraffe ?g)
        (onFire ?g)
        (onWater ?g)
        (onForest ?g)
        (inPain ?g)
        (harmed ?g)
        (safe ?g)
        (unsafe ?g)

    )

    (:action move
        :parameters (?a ?from ?to)
        :precondition (and
            (agent ?a)
            (local ?from)
            (local ?to)
            (at ?a ?from)
        )
        :effect (and
            (at ?a ?to)
            (not (at ?a ?from))
        )
    )

    (:action saveGiraffe
        :parameters (?a ?g ?from ?to)
        :precondition (and
            (not (safe ?g))
            (not (onFire ?g))
            (not (onWater ?g))
            (not (onForest ?g))
            (not (inPain ?g))
            (not (harmed ?g))
            (agent ?a)
            (caretaker ?a)
            (local ?from)
            (at ?a ?from)
            (giraffe ?g)
            (at ?g ?from)
            (local ?to)
            (zoo ?to)
        )
        :effect (and
            (at ?g ?to)
            (not (at ?g ?from))
            (at ?a ?to)
            (not (at ?a ?from))
            (safe ?g)
        )
    )
    
    (:action changeToCaretaker
        :parameters (?a ?l)
        :precondition (and
            (agent ?a)
            (local ?l)
            (central ?l)
            (at ?a ?l)
        )
        :effect (and
            (caretaker ?a)
            (not (fireman ?a))
            (not (lifeguard ?a))
            (not (rescuer ?a))
            (not (nurse ?a))
            (not (doctor ?a))
        )
    )

    (:action changeToFireman
        :parameters (?a ?l)
        :precondition (and
            (agent ?a)
            (local ?l)
            (central ?l)
            (at ?a ?l)
        )
        :effect (and
            (not (doctor ?a))
            (not (caretaker ?a))
            (not (lifeguard ?a))
            (not (rescuer ?a))
            (not (nurse ?a))
            (fireman ?a)
        )
    )
    
    
    (:action changeToLifeguard
        :parameters (?a ?l)
        :precondition (and
            (agent ?a)
            (local ?l)
            (central ?l)
            (at ?a ?l)
        )
        :effect (and
            (not (doctor ?a))
            (not (caretaker ?a))
            (not (fireman ?a))
            (not (rescuer ?a))
            (not (nurse ?a))
            (lifeguard ?a)
        )
    )
    
    
      (:action changeToRescuer
        :parameters (?a ?l)
        :precondition (and
            (agent ?a)
            (local ?l)
            (central ?l)
            (at ?a ?l)
        )
        :effect (and
            (not (doctor ?a))
            (not (caretaker ?a))
            (not (fireman ?a))
            (not (lifeguard ?a))
            (not (nurse ?a))
            (rescuer ?a)
        )
    )
    
    
    
    (:action changeToNurse
        :parameters (?a ?l)
        :precondition (and
            (agent ?a)
            (local ?l)
            (central ?l)
            (at ?a ?l)
        )
        :effect (and
            (nurse ?a)
            (not (fireman ?a))
            (not (lifeguard ?a))
            (not (rescuer ?a))
            (not (caretaker ?a))
            (not (doctor ?a))        
        )
    )
    
    
    
    (:action changeToDoctor
        :parameters (?a ?l)
        :precondition (and
            (agent ?a)
            (local ?l)
            (central ?l)
            (at ?a ?l)
        )
        :effect (and
            (doctor ?a)
            (not (fireman ?a))
            (not (lifeguard ?a))
            (not (rescuer ?a))
            (not (nurse ?a))
            (not (caretaker ?a))
        )
    )
    
    
    (:action saveFromFire
        :parameters (?a ?g ?l)
        :precondition (and
            (agent ?a)
            (fireman ?a)
            (giraffe ?g)
            (onFire ?g)
            (local ?l)
            (at ?a ?l)
            (at ?g ?l)
        )
        :effect (and
            (not (onFire ?g))
        )
    )
    
    (:action saveFromWater
        :parameters (?a ?g ?l)
        :precondition (and
            (agent ?a)
            (lifeguard ?a)
            (giraffe ?g)
            (onWater ?g)
            (local ?l)
            (at ?a ?l)
            (at ?g ?l)
        )
        :effect (and
            (not (onWater ?g))
        )
    )   
    (:action saveFromForest
        :parameters (?a ?g ?l)
        :precondition (and
            (agent ?a)
            (rescuer ?a)
            (giraffe ?g)
            (onForest ?g)
            (local ?l)
            (at ?a ?l)
            (at ?g ?l)
        )
        :effect (and
            (not (onForest ?g))
        )
    )
    
    (:action takeToHosp
        :parameters (?a ?g ?from ?to)
        :precondition (and
            (not (safe ?g))
            (not (onFire ?g))
            (not (onWater ?g))
            (not (onForest ?g))
            (or (inPain ?g) (harmed ?g))
            (agent ?a)
            (nurse ?a)
            (local ?from)
            (at ?a ?from)
            (giraffe ?g)
            (at ?g ?from)
            (local ?to)
            (hosp ?to)
        )
        :effect (and
            (at ?g ?to)
            (not (at ?g ?from))
            (at ?a ?to)
            (not (at ?a ?from))
            (not (inPain ?g))
        )
    )
    
    
        (:action surgery
        :parameters (?a1 ?a2 ?l ?g)
        :precondition (and
            (agent ?a1)
            (agent ?a2)
            (giraffe ?g)
            (local ?l)
            (hosp ?l)
            (nurse ?a1)
            (doctor ?a2)
            (at ?a1 ?l)
            (at ?a2 ?l)
            (at ?g ?l)
            (harmed ?g)
        )
        :effect (and
            (not (harmed ?g))
        )
    )

)
