**chapter 4, part 10 - finishing touches**



**sound effects**

* added sound effects and visual effects throughout the project for various scenes
* created a fade in/out effect for the title and level base scene
* made a quick adjustment to the collision shape of the enemy to have it feel a little better.



**double jumping**

* player script update

  * new variables

    * maximum number of jumps
    * the effect on velocity with the second jump
    * how many jumps have occurred
  * jump state update

    * jump count updated
  * get\_input update

    * what are the conditions for a double jump to occur and how can I put that in the if statement
  * physics\_process update

    * jump count back to 0 when on the floor



**dust particles**

* CPUParticles2d node to Player

  * set particle gradient to fade to zero alpha
  * add scripts for emitting dust for jumping and landing



**updated title**

* updated title scene to fix bug where user could input to multiple times, going beyond level one and triggering the fade out animation multiple times



**ladders**

* player scene

  * animation player

    * climb animation

      * length: 0.4
      * loop: on
      * frames: 0, 1, 0, 2
  * player script

    * set climb speed
    * bool whether on ladder
    * get\_input

      * direction input
      * change state if on ladder
      * if climbing set speed and anim for each direction
      * if not on ladder, state is IDLE
    * update physics process

      * if not climbing, the gravity is normal



**level setup**

* Level scene update

  * Area2D

    * Name: Ladders
    * connect body\_entered and body\_exited 
    * collision layer: items
    * mask: player
  * update level script

    * \_ready

      * create ladders function
      * data from World tileset



**moving platforms**

* Node2d root node for new scene

  * Name: MovingPlatform
  * TileMap child

    * add tiles\_world.tres as the tileset
    * collision animatable checked
  * new script

    * set an offset
    * set a duration
    * \_ready

      * use a tween for movement

        * experiment



































































































