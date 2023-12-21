extends Node3D


var distanceToMenu;
func _ready():
	distanceToMenu = global_position.z - $"../XROrigin3D/PlayerBody".position.z;
func _on_right_controller_button_pressed(by_button):
	if (by_button == "by_button"):
		if (visible == true):
			visible = false;
		else:
			visible = true;
			
func _process(delta):
	global_position.z =  $"../XROrigin3D/PlayerBody".position.z + distanceToMenu;

