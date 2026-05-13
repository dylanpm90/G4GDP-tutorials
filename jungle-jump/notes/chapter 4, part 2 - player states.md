**chapter 4, part 2 - player states**



**Player script**

* create player.gd

  * vars

    * gravity = 750
    * run\_speed = 150
    * jump\_speed = -300
  * enum states

    * IDLE, RUN, JUMP, HURT, DEAD
  * init state as IDLE
  * \_ready state is IDLE
  * change\_state function

    * match state

      * script corresponding animations
      * "jump\_up" with JUMP



**Player movement**

* get input

  * vars: right, left, jump
* use velocity.x and runspeed for right and left

  * flip sprite appropriately
* jump

  * only when on the ground
  * velocity.y
* idle to run when moviing
* run to idle when standing still
* jump state when in air
* physics process

  * apply gravity to y velocity
  * call get\_input
  * call move\_and\_slide
* reset function

  * position, show and change to IDLE
* Main node

  * add player instance
  * add static body with rectangular collision shape
  * show collision shapes
  * test character movement



**Player health**

* signals for life changed and died
* life and a set function for life

  * if life is less than or equal to 0, change state to dead
* Add life to reset function
* hurt()

  * change state to hurt when function is called
* HURT state:

  * play hurt anim
  * send the player away from the object which hurt them
  * lose 1 life
  * timer to switch back to idle
* DEAD state:

  * emit died
  * hide
* disable input when hurt

