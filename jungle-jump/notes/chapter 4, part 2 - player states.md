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

