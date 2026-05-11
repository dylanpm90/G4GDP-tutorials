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













































