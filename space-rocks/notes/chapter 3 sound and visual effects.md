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



**Particles, player thrust**

* Add CPUParticles2D node 

  * Name: Exhaust
  * Amount: 25
  * Drawing/Local Coords: On
  * Transform/Position: (-28,0)
  * Transform/Rotation: 180
  * Visibility/Show Behind Parent: On
  * Emission Shape: Rectangle

    * Rect Extents: 1, 5
  * Direction/Spread: 0
  * Gravity: 0, 0
  * Initial Velocity/Velocity Max: 400
  * Scale/Scale Amount Max: 8
  * Set new Scale Amount Curve with two points set in a downward curve
  * Color Ramp Gradient

    * make it look like a flame
  * Lifetime: 0.1
* update player script

  * Exhaust only emits when thrust is true



**Enemy trail**

* Add CPUParticles to the Enemy

  * Amount: 20
  * Visibility/Show Behind Parent: On
  * Emission Shape/ Sphere Radius: 25
  * Gravity: 0,0
  * use corona asset for Drawing/Texture
  * Scale/ Scale amount max: 0.1
  * Material > New CanvasItemMaterial 

    * Blend Mode: Add
  * Scale/ Scale amount Curve: 8
  * Lifetime:2.5



























