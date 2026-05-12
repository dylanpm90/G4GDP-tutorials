**chapter 3 enemies**



**Following a path**

* New Node scene called EnemyPaths

  * Path2D node

    * create a path starting and ending outside the game window with some extra points to be curvy
    * Select control points and smooth out the lines



**Enemy scene**

* New scene: Area2D called Enemy
* Sprite 2D

  * Animation H-frame = 3
* CollisionShape2D

  * CircleShape2D
* Instance EnemyPaths
* AnimationPlayer

  * add animation called flash

    * Length: 0.25
    * Snap: 0.01
    * Key frame Modulate

      * 0.04 Modulate to red
      * forward another 0.04 color white
      * repeat 2 more times for three flashes
* instance explosion scene

  * hide
* timer node: GunCooldown

  * wait time: 1.5
  * AutoStart: On
* add script and connect timeout

  * pass function
* Add the Area2D to enemies group



**Moving the Enemy**

* init variables in Enemy scene

  * bullet packed scene
  * speed
  * rotation
  * health
  * follow (PathFollow2d nodes)
  * target
* update \_ready

  * choose a enemy color randomly
  * choose a random EnemyPath

    * follow it
    * do not follow in loop
* update \_physics\_process

  * rotation
  * follow progress
  * position
  * queue\_free at end of path



**Spawning enemies**

* Add EnemyTimer to Main

  * One Shot: On
* Reference enemy scene in main script
* update new\_level

  * start EnemyTimer
* connect EnemyTimer timeout

  * instance enemy scene
  * target player
  * Start next timer



**Shooting and collisions**

* New Bullet Scene

  * Save original bullet scene as enemy\_bullet.tscn
  * Rename root node accordingly
  * Detach script
  * Disconnect signals
  * replace laser texture with green laser
* Script EnemyBullet

  * declare speed
  * func start

    * position and rotation
  * \_process

    * incorporate bullet speed
  * connect body entered signal

    * delete after body entered
  * after it leaves screen, delete
  * bring enemy bullet to enemy scene
* Update enemy script:

  * declare bullet spread var
  * shoot function

    * enemy position aims in direction to target player
    * affect direction rotation with bullet\_spread
    * instance bullet to scene tree
    * call start function of bullet
  * shoot pulse function

    * for loop shoot a number of times with a short delay
    * cooldown timer
  * take damage

    * health is reduced by amount
    * flash animation played
    * if health reduced to 0, explode
  * explode

    * speed is zero and shooting stops
    * collision shape disabled
    * hide the sprite
    * play explosion
    * delete
  * connect enemy body entered signal so that it explodes if the player runs into it
  * update Bullet scene

    * connect area\_entered

      * if it's in the enemies group

        * take damage























