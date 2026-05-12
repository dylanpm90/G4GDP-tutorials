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

