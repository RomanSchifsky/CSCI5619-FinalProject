# **Redirected Walking With 3D VR GUI Configuration**

  

## Authors

 - Roman Schifsky, schif173
 - Tanavia Harrington, harr3047

  

## Instructions

 1. In the real world, stand in the bottom center of where you would
    like your circle to start.  Adjust the diameter of the circle (to
    your play limits) by grabbing and moving the slider.
 2. Grab the slider and bring it to the other side of the circle to
    change the direction from counter-clockwise to clockwise.
 3. Begin walking, stay on the solid yellow path. To summon the
    configuration menu, press the B button on the right controller.

  

## Script Information

  
**Direction Circle Node3D**
This object uses the PlayAreaGUI script to manage the 3D slider interaction, calculating the distance of the slider from the center of the dynamic circle, adjusting scale, and determining the direction and diameter of the circle the user is walking around based on the slider's position. The script references the slider’s distance variable (sliderDistance) from the center of the circle to calculate the circle’s diameter (circleDiameter) to adjust the strength of the rotation gain depending on how small or large the space is. Depending on if the user changes position of the circle to clockwise or counterclockwise, the slider manipulates the circleDirection and adjusts a quaternion accordingly for graphics and rotation direction.

**Slider XRToolsPickable**
This object uses the Slider script to control its position and lock it along the X-axis while allowing movement only along this axis. This allows the slider to ‘lock’ back into place after the user uses it for manipulating the circle. This script locks the position of the node on the Y and Z axes by resetting them to their original values each frame. This ensures that the node only moves along the X-axis, regardless of other transformations or interactions in the XR environment.

 **Globals**
This script is used to intialize a few variables, namely it defaults the circle diameter to 5.0 meters, and the circle direction to be “LEFT”.

  
**3D GUI Node3D**
This object uses the 3D GUI script to control the visibility and position of the menu relative to a player's position, specifically maintaining a constant distance along the Z-axis. This script utilizes the ‘_on_right_controller_button_pressed’ signal to receive input from the right controller when the ‘by_button’ is pressed which toggles the visibility.

  
**XRCamera3D**
This object of type XRCamera3D uses the XRCamera3D script to rotate the player depending on the current direction of the circle. The script checks the circleDirection variable. If it's set to "LEFT", which is its default direction, it rotates the "../PlayerBody" node counter-clockwise. If it's "RIGHT", it rotates clockwise.

  

## XR-Tools Scripts

  

**Player_body**
We used the XR-Tools player body script because when developing our own modified script, there were issues with motionsickness as we couldn’t get the tracking to follow the XRCamera3D node smoothly.

  

**Hand**
We used the XR-Tools hand script because the functionality isn’t novel or specific to our implementation and how grabbing is instantiated with XR-Tools is already perfect for how we need it to work to manipulate the slider object.

  

**Movement_direct**
 We used the XR-Tools movement direct script for the same reasons we used the hand script. Its functionality is already perfect.

  

**Function_pickup**
We used the XR-Tools function pickup script to give our slider object the Pickable attribute so it could be controlled by the player. This script also works fine as is.

# References

 - Used creative commons textures by Kenney
   https://kenney.nl/assets/prototype-textures
