**chapter 4, part 6 - game ui**



**set up**

* MarginContainer root

  * name: HUD
  * Layout: Top Wide
  * Theme Overrides/ Constants:

    * R/L: 50
    * T/B: 20
* HBoxContainer (parent)

  * Label

    * name: Score
    * text: 100
    * Layout/Container Sizing

      * check Expand
    * Label Settings

      * configure font from assets
      * font size: 48
    * Outline

      * size: 16
      * color: black
  * HBoxContainer (child)

    * name: LifeCounter
    * TextureRect (child)

      * name: L1
      * heart texture from assets
      * stretch mode: keep aspect centered
      * duplicate 4 times

