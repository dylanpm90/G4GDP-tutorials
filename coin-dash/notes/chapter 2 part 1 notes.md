#### **Ch. 2, Part 1**



##### **The Player Scene**



###### **Creating the Scene**

* resize viewport to 480w and 720h in the display settings
* set the stretch mode to canvas\_items and aspect to keep and disable resizing the window.
* created player scene and used a Area2D node then selected the Group Selected Node(s) option.



###### **Sprite Animation**

* created animated sprite child node and made three animations: idle, hurt, and run.
* attached corresponding animations from assets to idle, hurt and run.
* set default animation and adjusted sprite scale.



###### **Collision Shape**

* added a rectangular collision box
* off set the sprite to be centered then adjusted the collision box around the sprite.



###### **Scripting the Player**

* added a script to the Player node and added speed, velocity and screen size variables



###### Moving the Player

* use Input.get\_vector() to receive key inputs and implement player movements
* applied inputs, position can be changed with velocity and speed variables and delta. and now the character can move.
* applied a clamp function to the x and y of position so that the player sprite cannot go off the viewport.



###### **Choosing Animations**

* applied animations, if velocity is greater than 0, the animation is set to run. if the velocity is 0, it is idle. if the velocity is less than 0, the run sprites are flipped horizontally.
* created a function for start position and animation.
* created a die function for later on in the tutorial.



###### **Preparing for Collisions**

* set up signals for coin pickup and hurt
* created function for area entered with coins and obstacles which emits pickup and die signals respectively





