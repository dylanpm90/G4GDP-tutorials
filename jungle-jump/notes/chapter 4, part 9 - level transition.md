**chapter 4, part 9 - level transition**



**door scene**

* Area2d root node

  * name: door
  * save in items folder
  * sprite2d node

    * texture: props.png
    * region: enabled
    * offset/offset:

      * y: -8
  * CollisionShape2d

    * rectangle over the door image
  * collision

    * items layer
    * player mask
* Level scene

  * use the door from the items tileset and place it in the level
  * level script:

    * load the door scene as a variable
    * update spawn items

      * if it's a door type item instance it and connect it's body\_entered signal to go to the next level.
* screen settings

  * set aspect to keep in project settings

