**chapter 4, part 7 - title screen**



**set up**

* Control root node

  * layout: full rect
* TextureRect

  * back.png
  * layout: FullRect
  * stretch mode: keep aspect covered
* TextureRect

  * middle.png
  * stretch mode: tile
  * drag width and arrange image
* Label 

  * name: Title

    * Text: Jungle Jump
    * size: 72
    * layout: centered
* Label

  * name: Message

    * text: Press Space to Play
    * size: 48
    * layout: center bottom
* animate title screen

  * AnimationPlayer node

    * intro 

      * keyframe current position to 0.5
      * at time 0, have it off screen and keyframe

