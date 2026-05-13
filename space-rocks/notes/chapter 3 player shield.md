**chapter 3 player shield**



* Update player script

  * new shield\_changed signal
  * new vars

    * max shield
    * shield regen
    * shield : set\_shield
  * set\_shield function

    * emit changes
    * if shield is depleted, explode and lose one life
* update \_on\_body\_entered

  * shield reduced by rocks according to size
  * then rock explodes
* update enemy bullet

  * var damage
  * update body entered

    * bullet hitting player does damage
* update enemy script

  * does damage to player shield
* update set\_lives in Player

  * when Player loses a life, shield is reset
* update \_process in player script

  * shield regen over time
* update HUD scene

  * new nodes to HBoxContainer

    * TextureRect

      * use Sheild\_gold texture
      * stretch mode: Keep Centered
    * TextureProgressBar

      * rename to ShieldBar
      * green bar for Progress texture
      * bar glass for Over property
      * range: 0, 1
      * step: 0.01
      * layout/ container sizing

        * expand: on
        * vertical: shrink center
    * place after Score and before LivesCounter
* update HUD script

  * ready shield bar
  * preload bar textures
  * update\_shield function

    * green if value is between .4 and .7
    * red if below .4
    * elif yellow below .7
* main scene

  * connect player shield\_changed signal to HUD update\_shield
  * update score

    * add 10 times the size of the rock hit































