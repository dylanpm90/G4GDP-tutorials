**chapter 3 sound and visual effects**



**sound and music**

* Add two AudioStreamPlayer nodes to Player and add their respective sounds

  * LaserSound

    * add script in shoot to play
    * \-10 dB
  * EngineSound

    * update get\_input()

      * if the engine sound isn't already playing, start playing otherwise stop playing
* Stop Engine sound in DEAD state
* Main scene add three more AudioStreamPlayers

  * ExplosionSound

    * script in \_on\_rock\_exploded
  * LevelUpSound

    * script in new\_level
  * Music

    * play in new\_game
    * stop in game\_over
* Add audiostreamplayers to enemy for explosion and shooting

