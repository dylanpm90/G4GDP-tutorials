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



