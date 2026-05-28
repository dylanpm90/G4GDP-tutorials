**chapter 4 - part 4 designing the level**



**tilemaps and tile sets**



* new Node2d scene called LevelBase

  * new TileMap node

    * use an existing tileset downloaded in the assets or create a new one.
    * Tiles tab:

      * grab tileset assets and automatically create tiles
      * Add Element in PhysicsLayers in environment layer
      * Paint - choose physics Layer 0



**using the provided tilesets**

* add the three premade sets

  * tile map nodes

    * World
    * Items
    * Danger
* Instance player
* Add Marker2D called SpawnPoint
* Attach script to Level node

  * hide items
  * set player position to spawn point



**designing the first level**

* create new inherited scene from level\_base

  * Level101

    * design a level and play around
    * place some items around the map



**update level\_base script**

* hide items
* reset player spawn
* set camera limits

  * get map size
* player can collect items

  * load item scene
  * set score to zero
  * spawn items
  * picking up an item adds 1 to the score



&#x20;**dangerous objects**

* add danger objects around the map

  * add danger tilemap to a new danger group

