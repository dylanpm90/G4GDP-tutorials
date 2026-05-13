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

* start

