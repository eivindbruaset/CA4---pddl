(define (domain robplan)
(:requirements :typing :durative-actions)
  (:types  
     turtlebot robot camera robo_arm - vehicle
     vehicle photo valve pump charger obj battery - subject
     city_location city - location
     waypoint - city_location
     route
     )

  (:predicates
    (at ?physical_obj1 - subject ?location1 - location)
    (available ?vehicle1 - vehicle)
    (available ?camera1 - camera)    
    (connects ?route1 - route ?location1 - location ?location2 - location)
    (in_city ?location1 - location ?city1 - city)
    (route_available ?route1 - route)
    (no_photo ?subject1 - subject)
    (photo ?subject1 - subject)
    (no_seals_check ?subject1 - subject)
    (seals_check ?subject1 - subject)
    (no_battery ?subject1 - subject)
    (full_battery ?subject1 - subject)


   )

(:functions
           (distance ?O - location ?L - location)
           (route-length ?O - route)
	    (speed ?V - vehicle)
            )

  (:durative-action move_robot
       :parameters ( ?V - robot ?O - location ?L - location ?R - route)
       :duration (= ?duration (/ (route-length ?R) (speed ?V)))
       :condition (and 
			(at start (at ?V ?O))
            		(at start (connects ?R ?O ?L))
       )
       :effect (and 
		  (at start (not (at ?V ?O)))
                  (at end (at ?V ?L))
        )
    )


  (:durative-action take_photo
       :parameters ( ?V - robot ?L - location ?P - pump)
       :duration (= ?duration 5)
       :condition (and 
            (over all (at ?V ?L))
            (at start (at ?P ?L))
            (at start (no_photo ?P))
       )
       :effect (and 
	    (at start (not (no_photo ?P)))
            (at end (photo ?P))
        )
    )

  (:durative-action charge
       :parameters ( ?V - robot ?L - location ?C - charger ?T - battery)
       :duration (= ?duration 10)
       :condition (and 
            (over all (at ?V ?L))
            (at start (at ?C ?L))
            (at start (no_battery ?T))
       )
       :effect (and 
	    (at start (not (no_battery ?T)))
            (at end (full_battery ?T))
        )
    )

 (:durative-action check_seals_valve
       :parameters ( ?V - robot ?L - location ?B - valve)
       :duration (= ?duration 10)
       :condition (and 
            (over all (at ?V ?L))
            (at start (at ?B ?L))
            (at start (no_seals_check ?B))
       )
       :effect (and 
	    (at start (not (no_seals_check ?B)))
            (at end (seals_check ?B))
        )
    )
)