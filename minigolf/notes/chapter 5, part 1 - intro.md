**chapter 5, part 1 - intro**



**set up**

* add a left click action in project settings

  * name: click
* update Display/Window

  * Stretch/Mode: viewport



**creating the course**

* Node3D

  * name: Hole
  * GridMap node

    * add golf\_tiles.tres
  * physics settings

    * rough: on
    * bounce: 0.5
  * Camera3d



**environment and lighting**

* add a WorldEnvironment node and a DirectionalLight3D node
* DirectionalLight3d

  * Max Distance: 40



**adding the hole**

* Area3D

  * name: Hole
  * CollisionShape3D

    * Shape: New CylinderShape3D
    * Height: 0.25
    * Radius**:** 0.08
  * Position the Hole at the courses hole position
* Marker3D

  * Name: Tee
  * Position where you want the ball to be placed





















