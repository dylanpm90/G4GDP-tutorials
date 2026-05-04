#### **Ch. 2, Part 3**



##### **The Main Scene**



###### **Node Setup:**

* Added a new scene with a simple Node and named it 'Main'.
* Instantiated Child Scene of Player.
* Added a TextureRect node named Background, before the Player node.

  * Added the grass image to the Background

    * Stretch Mode: Tile.
    * Choose 'FullRect' in the editor window.
* Added a Timer node named GameTimer.



###### **Main Script:**

* added coin\_scene, playtime, level, score, time\_left, screensize and playing variables



**Initializing**

* added \_ready() and grabbed 'screensize' variable
* added script which will hide player until game is started



###### **Starting a New Game:**

* created new\_game()

  * scripted variables playing, level, score, time\_left, and new game player conditions
  * start game timer
  * spawn coins function

    * spawns coins according to level
    * instantiates in Main and spawns in the screen size of the viewport.

**Checking for remaining coins**

* scripted that if playing is true and that there no coins remain:

  * level + 1
  * add 5 seconds to time
  * spawn more coins



