chapter 2, part 5



**Visual Effects**

* update pickup function to have a tween which shows the player that an object is picked up.

  * the object will increase in scale and fade out using the modulate property simultaneously.

    * set\_parallel()
  * disable a second pickup by disabling the collision shape.
  * changes will occur after the end of the current frame

    * set\_deferred()



**Sound**

* add three AudioStreamPlayer nodes in Main

  * CoinSound, LevelSound, and EndSound 
  * set respectiive sounds into the stream property of each node
  * call their play functions in the appropriate functions



**Powerups**

* Save coin scene as powerup.tscn

  * detach script
  * change root node as Powerup
* remove coins group and add powerups group
* replace coin images to powerup images in AnimatedSprite2D
* Add script and copy the code from coin.gd
* Add a timer node named Lifetime.

  * Wait Time = 2
  * One Shot and Autostart = On
  * connect timeout signal and remove the powerup on timeout.
* Go to Main and create a Timer

  * name it PowerupTimer

    * One Shot: On
    * connect timeout to spawn a powerup
    * link Powerup scene with a variable in main
    * Add powerup sound with another AudioStreamPlayer
    * powerup spawns semi randomly in process with spawn\_coins()
* Emit object signal for player pickup 

  * coins adds 1 to score
  * powerups add 5 to timer



**Coin animation**

* add "shimmer" effect

  * go to the coin scene's Animated Sprite2D

    * In SpriteFrames

      * Animation Looping: Off
      * Speed: 12FPS
  * add Timer node to Coin scene

    * randomize timer start in \_ready()
  * Connect timeout to sprite frame and animation start



**Obstacles**







