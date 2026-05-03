#### **Ch. 2, Part 2**



##### **The Coin Scene**



###### **The node setup:**

* this section will cover creating a coin which can be instanced in the main scene.
* first, i created a new scene with a new Area2D node, renamed it Coin then added AnimatedSprite2D and CollisionShape2D as child nodes then grouped them together.
* added coin animations to AnimatedSprite2D and adjusted fps to 12 and its scale to (0.4, 0.4).
* added a circle shape collision to CollisionShape2D



###### **using groups:**

* added a new 'coins' group and added the Coin node to it.



###### **Coin script:**

* added an empty script to Coin
* added screensize variable and pickup function with queue\_free() inside of it.

