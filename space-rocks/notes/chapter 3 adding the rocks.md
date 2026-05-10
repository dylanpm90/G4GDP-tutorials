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

