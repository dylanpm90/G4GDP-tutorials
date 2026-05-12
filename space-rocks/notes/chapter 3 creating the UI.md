**chapter 3 creating the UI**



**Layout**

* Make a start button, status message, score, and life counter
* Create a new scene with a CanvasLayer node called HUD
* MarginContainer as child to HUD

  * Layout: Top Wide
  * Theme Overrides/ Constants: 20
  * HBoxContainer children

    * Label node called ScoreLabel
    * HBoxContainer called LivesCounter
* Timer as child to HUD

  * One Shot: On
  * Wait Time: 2
* ScoreLabel

  * Text: 0
  * Layout/container/sizing/horizontal: check expand
  * Add font to label settings
  * font size: 64
* LivesCounter

  * Theme Overrides/constants/Separation: 20
  * Add TextureRect child called L1

    * use player\_small texture

      * Stretch Mode: Keep Aspect Centered
    * Duplicate twice
* VBoxContainer child of HUD

  * Label node: Message

    * text: Space Rocks!
    * font: same as ScoreLabel
    * Horizontal Alignment: Center
  * Texture Button: StartButton

    * assign normal and hover texture from assets
    * Layout/Container/Sizing/Horizontal: Shrink Center
  * Layout of VBox Container: Center Wide
  * Theme Overrides/constants/separation: 100



**Scripting the UI**

* script HUD

  * signal start\_game
  * lives, score, message and start button are @onready
  * show message text with a timer
  * update score text
  * update lives
  * game over message
  * button functionality
  * connect pressed signal of StartButton

    * emit start\_game
  * connect timer timeout

    * hide message
    * empty quotes message text



**The Main scene's UI code**

* instance HUD in Main
* vars:

  * level, score, playing
* new\_game()

  * remove old rocks from previous round
  * zero level and score
  * update score
  * tell player to "get ready"
  * reset player
  * timer
  * playing = true
* new\_level()

  * advance one level
  * show new wave in HUD message
  * spawn more rocks
* remove spawn\_rocks method in \_ready()
* update \_process()

  * don't do anything if player isn't playing
  * if there aren't any rocks left, call new\_level
* Connects HUD start\_game to the new\_game function in Main

  * Use the Pick button next to Receiver Method
* game\_over()

  * no longer playing
  * call HUD game\_over



**Player code**

* signal lives\_changed and dead
* vars

  * reset\_pos
  * lives
  * set
* set\_lives function

  * amount of lives
  * if lives are zero or less, DEAD
  * else INVULNERABLE
* reset()

  * reset position
  * show Sprite
  * 3 lives
  * state is ALIVE
* update \_integrate\_forces()

  * player set in center of screen
  * reset\_pos: false
* Main Player instance

  * lives\_changed connect to script HUD node with update\_lives receiver method



**Ending the Game**

* Instance Explosion on Player

  * uncheck Visibility
  * Add Timer called InvulnerabilityTimer

    * Wait time: 2
    * One shot: On
* Update State Machine (change\_state)

  * Init

    * sprite alpha = .5
  * ALIVE

    * alpha = 1.0
  * INVULNERABLE

    * alpha = 0.5
    * start Invulnerability timer
  * DEAD

    * hide sprite
    * linear velocity stops
    * emit dead
* Connect InvulnerabilityTimer

  * func to change\_state to alive on timeout



**Detecting collisions between rigid bodies**

* Enable Player scene contact monitoring

  * max contacts reported: 1
* connect body\_entered signal

  * func \_on\_body\_entered(body)

    * if hit by a rock, explode
    * reduce lives by 1
    * call explode function
  * made another explode function for Player
* Main

  * connect Player instance dead signal to game\_over
  * Test



**Pausing the game**

* map P to pause in Input settings
* pause with \_input(event)

  * ignore if not playing
  * flip scene tree pause state
  * get message from HUD
  * show Paused
  * or hide message
* set Main Process/Mode to Always































