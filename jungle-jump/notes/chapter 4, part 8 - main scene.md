**chapter 4, part 8 - main scene**



**set up**

* clean up extra nodes set up during testing
* game\_state script

  * add script

    * declare level variables
    * main and title
* restart function

  * set level to zero
  * change to title screen
* next level function

  * add 1 to current level
  * if end is reached go to game end scene
* add script as autoload in Project Settings

  * choose game\_state.gd
* main script

  * when the scene is loaded, it includes the level scene of the current level
* title script

  * if space is pressed, call next\_level
* level script

  * game restart on player died signal
* set title as first scene for app

