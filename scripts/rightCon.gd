extends CheckBox


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_CheckBox1_toggled(button_pressed):
	var player = get_node("/root/XROrigin3d") 
	player.set_control_state("right_toggle", button_pressed) 
