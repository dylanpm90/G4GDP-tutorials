#### **CH. 2, Part 4**



##### **The User Interface**



###### **Node Setup:**

* Created new scene, added a CanvasLayer node called HUD.



###### **Message Label:**

* Added a Label node named "Message" to display the game title and a 'game over' message.
* Layout: HCenter Wide
* Set text field to: "Coin Dash!"

  * Horizontal and Vertical alignment set to center
* Created new label setting then added Kenney Bold font and set size to 48.

  * set a shadow.



###### **Score and Time Display:**

* Added a MarginContainer node and renamed it HUD

  * set layout anchor to Top Wide.
* Set all margin properties to 10 so text wouldn't go past screen edges.
* Duplicated Message twice then renamed them Score and Time and set the text to 0 for both of them.

  * Horizontal Alignment

    * Score: Right
    * Time: Left.



###### **Updating the UI via GDScript:**

* Add script to HUD

  * update score text whenever a coin is collected
* Add timer child node to HUD

  * Wait Time: 2 seconds
  * One Shot: On
  * Script:

    * function to display message text and start timer.
    * function to hide message after timeout over signal.



**Using Buttons**

* Add button child node to HUD and name it StartButton

  * Text: Start
  * Use same font as Message
  * Layout: Center Bottom
* Script on\_start\_button\_pressed signal to hide Start button and Message and emit start\_game signal.



###### **Game Over:**

* add function:

  * show game over message
  * await timeout
  * show start button
  * show title text



###### **Adding HUD to Main:**





