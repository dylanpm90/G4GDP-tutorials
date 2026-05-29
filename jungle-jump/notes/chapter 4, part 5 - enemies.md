**chapter 4, part 5 - enemies**



**set up**

* new characterbody node

  * name it enemy
  * sprite, collision, and animation player
* script for speed, gravity and movement direction
* can hurt player



**damaging the enemy**

* new animation in enemy Animation player

  * death

    * length = 0.3
    * snap to 0.05
    * loop off
    * enemy death texture

      * keyframe
* new function in enemy.gd

  * plays death animation
  * disables collision shape
  * turns off physics process
* connect animation end for death animation then queue free
* update player script

  * if collision group is enemies

    * if enemy is below player, enemy takes damage
    * player gets upward velocity
    * otherwise, player is hurt

