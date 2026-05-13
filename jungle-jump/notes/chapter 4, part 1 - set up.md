**chapter 4, part 1 - set up**



**project settings**

* default texture filter: nearest
* stretch mode: canvas items
* aspect: expand
* Layer Names | 2D Physics:

  1. environment
  2. player
  3. enemies
  4. items
* add inputs for up, down, left, right and jump



**Creating the player scene**

* Player

  * CharacterBody2D node

    * Collision Layer

      * player
    * Mask

      * environment, enemies and items
  * Collision2d

    * Rectangle shape
    * position: 0, -10
  * Sprite2D

    * texture: playersheet asset
    * HFrames: 19
    * Frame: 7
    * Position: 0, -16
  * AnimationPlayer

    * idle

      * length: 0.4
      * loop: on
      * update mode: continuous
      * keyframe 7 at 0
      * keyframe 10 at 0.3
    * run

      * length: 0.5
      * loop on
      * frames: \[13-18]
    * hurt

      * l: 0.2
      * loop: on
      * f: \[5,6]
    * jump\_up

      * l: 0.1
      * loop: off
      * f: \[11]
    * jump\_down

      * l: 0.1
      * loop: off
      * f: \[12]
  * Camera2D

    * Enabled: On
    * Zoom: 2.5, 2.5

















































