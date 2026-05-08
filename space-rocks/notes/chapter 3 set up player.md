**chapter 3 set up and player**



**Set up the project:**



* create input actions:

  * rotate\_left, rotate\_right, thrust, and shoot
  * map controls
* set gravity to zero
* set up player scene

  * RigidBody2D named Player
  * Sprite2D

    * add ship texture
    * scale: (0.5, 0.5)
    * rotation: 90
  * CollisionShape2D

    * CircleShape2D
    * scale it to match the ship
* set default texture filter to 'nearest'

  * under advanced settings/ rendering/textures

    * canvas textures



**State machines:**

* Create a simplistic finite state machine for Player

  * enum

    * INIT, ALIVE, INVULNERABLE, DEAD
  * create change\_state function

    * enable collision for ALIVE only
    * disabled for all other states
  * in ready function, change\_state(ALIVE) for testing



**Adding player controls:**

* init engine\_power, spin\_power, thrust and rotation\_dir vars
* apply inputs for ship movement

  * thrust, rotate
* Dampening

  * Linear: 1
  * Angular: 5





































