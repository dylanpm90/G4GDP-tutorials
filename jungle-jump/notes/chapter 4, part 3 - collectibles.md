**chapter 4, part 3 - collectibles**



**scene setup**

* Item

  * Area2D
  * save as items in items folder
  * collision/ layer: collectibles
  * collision/ mask: player
  * child nodes:

    * sprite2d

      * cherry
      * hframes: 5
    * collision

      * circle
    * animation player

      * swing

        * l: 1.6
        * snap: 0.2
        * loop: on
        * autoplay
        * animate



**Collectible script**

* script

  * signal picked\_up
  * textures dictionary

    * cherries
    * gems
  * init

    * args

      * type, position
    * sprite uses texture loaded from dictionary
    * assign position
  * connect item body entered

    * emit picked\_up
    * queue free



































