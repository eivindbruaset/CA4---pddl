(define (problem robplan) (:domain robplan)
(:objects

turtlebot0 - robot
camera0 - camera
charger0 charger1 charger2 - charger
robo_arm0 - robo_arm
battery0 - battery
valve0 valve1 - valve
pump0 pump1 - pump
waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 - waypoint
d01 d02 d03 d04 d05 d06 - route
d10 d12 d13 d14 d15 d16 - route
d20 d21 d23 d24 d25 d26 - route
d30 d31 d32 d34 d35 d36 - route
d40 d41 d42 d43 d45 d46 - route
d50 d51 d52 d53 d54 d56 - route
d60 d61 d62 d63 d64 d65 - route
)

(:init
(= (speed turtlebot0) 0.18)

(connects d01 waypoint0 waypoint1)
(connects d02 waypoint0 waypoint2)
(connects d03 waypoint0 waypoint3)
(connects d04 waypoint0 waypoint4)
(connects d05 waypoint0 waypoint5)
(connects d06 waypoint0 waypoint6)

(connects d10 waypoint1 waypoint0)
(connects d12 waypoint1 waypoint2)
(connects d13 waypoint1 waypoint3)
(connects d14 waypoint1 waypoint4)
(connects d15 waypoint1 waypoint5)
(connects d16 waypoint1 waypoint6)

(connects d20 waypoint2 waypoint0)
(connects d21 waypoint2 waypoint1)
(connects d23 waypoint2 waypoint3)
(connects d24 waypoint2 waypoint4)
(connects d25 waypoint2 waypoint5)
(connects d26 waypoint2 waypoint6)

(connects d30 waypoint3 waypoint0)
(connects d31 waypoint3 waypoint1)
(connects d32 waypoint3 waypoint2)
(connects d34 waypoint3 waypoint4)
(connects d35 waypoint3 waypoint5)
(connects d36 waypoint3 waypoint6)

(connects d40 waypoint4 waypoint0)
(connects d41 waypoint4 waypoint1)
(connects d42 waypoint4 waypoint2)
(connects d43 waypoint4 waypoint3)
(connects d45 waypoint4 waypoint5)
(connects d46 waypoint4 waypoint6)

(connects d50 waypoint5 waypoint0)
(connects d51 waypoint5 waypoint1)
(connects d52 waypoint5 waypoint2)
(connects d53 waypoint5 waypoint3)
(connects d54 waypoint5 waypoint4)
(connects d56 waypoint5 waypoint6)

(connects d60 waypoint6 waypoint0)
(connects d61 waypoint6 waypoint1)
(connects d62 waypoint6 waypoint2)
(connects d63 waypoint6 waypoint3)
(connects d64 waypoint6 waypoint4)
(connects d65 waypoint6 waypoint5)

(= (route-length d01)   1.4071   )
(= (route-length d02)   3.3166   )
(= (route-length d03)   4.1202   )
(= (route-length d04)   4.7177   )
(= (route-length d05)   2.3220   )
(= (route-length d06)   3.7745   )

(= (route-length d10)   1.4071   )
(= (route-length d12)   1.8547   )
(= (route-length d13)   2.4187   )
(= (route-length d14)   3.3145   )
(= (route-length d15)   2.1213   )
(= (route-length d16)   2.3437   )

(= (route-length d20)   3.3166   )
(= (route-length d21)   1.8547   )
(= (route-length d23)   1.2536   )
(= (route-length d24)   1.5928   )
(= (route-length d25)   2.7313   )
(= (route-length d26)   0.5139   )

(= (route-length d30)   4.1202   )
(= (route-length d31)   2.4187   )
(= (route-length d32)   1.2536   )
(= (route-length d34)   2.7167   )
(= (route-length d35)   2.5   )
(= (route-length d36)   1.3115   )

(= (route-length d40)   4.7177   )
(= (route-length d41)   3.3145   )
(= (route-length d42)   1.5928   )
(= (route-length d43)   2.7167   )
(= (route-length d45)   4.3710   )
(= (route-length d46)   1.0630   )

(= (route-length d50)   2.3220   )
(= (route-length d51)   2.1213   )
(= (route-length d52)   2.7313   )
(= (route-length d53)   2.5   )
(= (route-length d54)   4.3710   )
(= (route-length d56)   3.3732   )

(= (route-length d60)   3.7745   )
(= (route-length d61)   2.3437   )
(= (route-length d62)   0.5139   )
(= (route-length d63)   1.3115   )
(= (route-length d64)   1.0630   )
(= (route-length d65)   3.3732   )

(at charger0 waypoint0)
(at charger1 waypoint4)
(at charger2 waypoint3)

(at valve0 waypoint1)
(at valve1 waypoint2)

(at pump0 waypoint5)
(at pump1 waypoint6)

(available turtlebot0  )
(available camera0  )
(no_seals_check valve0  )
(no_seals_check valve1  )
(no_photo pump0  )
(no_photo pump1  )
(at turtlebot0 waypoint2  )
(full_battery battery0  )

)
(:goal (and
(at turtlebot0 waypoint4)
(seals_check valve0)
(seals_check valve1)
(photo pump0)
(photo pump1)
(full_battery battery0)
)
)
(:metric minimize (total-time))
)