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

