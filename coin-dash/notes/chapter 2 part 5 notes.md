chapter 2, part 5



**Visual Effects**

* update pickup function to have a tween which shows the player that an object is picked up.

  * the object will increase in scale and fade out using the modulate property simultaneously.

    * set\_parallel()
  * disable a second pickup by disabling the collision shape.
  * changes will occur after the end of the current frame

    * set\_deferred()

