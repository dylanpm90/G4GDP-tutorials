**chapter 3 adding the rocks**



**Scene set up:**

* RigidBody2D called Rock

  * Sprite2D with rock texture
  * Collision2D - don't set size yet
* Set Linear and Angular Damp Mode to Replace
* Set new Physics Material and set Bounce to 1



**Variable size rocks**

* new script for rock
* add member variables: screensize, size, radius, scale\_factor
* make a start function for rock explosion, size and physics
* for screenwrap for the rocks, use the same technique as you did with the ship, incorporate radius.



**Instantiating rocks**

* Create a Path2D in the Main scene and name it RockPath
* Draw along the perimeter of the screen with the path editor tools
* Add a PathFollow2D child node called RockSpawn to RockPath
* spawn rocks using the path with script in the Main scene
* Create a spawn\_rocks function



**Exploding rocks**

* Add the Rock scene to a new group called "rocks"



**Explosion scene**

* create a new scene called Explosion

  * Sprite2D ("Explosion")

    * use explosion texture, which is a spritesheet

      * set animation v and h frames to 8 and 8 
  * Animation player

    * New animation named "explosion" with length 0.64 and snap 0.01
* click key  in Explosion's frame property

  * deselect Create RESET Tracks
  * frame 0 at 0 s, frame 63 at .64 s
  * update mode: continuous
* Add explosion instance to Rock scene and hide it.
* Add script to start method for explosion scale to rock size
* Add 'exploded' signal at the top of the script
* exploded function in Rock

  * disable collision
  * hide the sprite
  * play the explosion animation
  * show the explosion
  * emit explosion signal
  * zero linear and angular velocity
  * await finished explosion animation
  * queue free











































