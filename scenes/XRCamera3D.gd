extends XRCamera3D
var lastPos = global_position.z;
var turnStr = 0.5;
var theta = 1;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Globals.circleDirection == "LEFT"):
		$"../PlayerBody".rotate_player(-(global_position.z - lastPos)/(Globals.circleDiameter/2.0));
	else:
		$"../PlayerBody".rotate_player((global_position.z - lastPos)/(Globals.circleDiameter/2.0));
	lastPos = global_position.z;
