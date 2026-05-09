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



**Screen wrap:**

* add a variable for screensize which is called in \_ready
* use \_integrate\_forces() to affect position with the rigidbody



**Shooting**

* Create new Bullet scene
* Bullet is an Area2D

  * Children:

    * Sprite2D

      * laser texture
      * scale (.5,.5)
    * CollisionShape2D

      * capsule shape collision
      * rotation: 90
    * VisibleOnscreenNotifier2D
* Add script

  * var speed init
  * start function which give velocity
  * \_process allows velocity
* on bullet exit screen, delete it.
* bullet body entered should explode and delete when hitting something in the rocks group



**Firing bullets**

* Add a Marker2D node to player and name it Muzzle

  * position: (50, 0)
* Add a Timer called GunCooldown

  * One Shot and Autostart: On
* Add exported bullet\_scene(PackedScene), exported fire\_rate(.25) and can\_shoot(true) variables to player script
* GunCooldown is the fire\_rate
* if shoot is pressed and can\_shoot is true, call the shoot function
* shoot function

  * can't shoot if in invulnerable state
  * can\_shoot is turned false and the cooldown starts
  * instantiate the bullet\_scene
  * bullet is a child of the scenetree rootnode
  * bullet starts from muzzle
* connect timeout signal of GunCooldown to be able to shoot again.



**Testing the player's ship**

* create a new scene with a generic node named Main
* add a sprite2d background with the space background from the assets as its texture.
* add an instance of player
* test player ship















