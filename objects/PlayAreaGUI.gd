extends Node3D

var sliderPosition = Vector3(0,0,0);
var sliderDistance = Vector3(0,0,0);
var scaleOffset = 1/0.405;
var circleDirection = "LEFT";
var circleDiameter = 0;
func _process(delta):
	sliderPosition = $"../Slider".global_position;
	sliderDistance = sliderPosition.distance_to($"..".global_position);
	circleDiameter = (sliderDistance) * 10 * 2;
	scale = Vector3(scaleOffset*sliderDistance, scaleOffset*sliderDistance, scaleOffset*sliderDistance);
	$"../MeshInstance3D/Label3D".text = str("Circle Diameter: " + str( "%.2f" % circleDiameter));
	if (sliderPosition.x - $"..".global_position.x < 0): # Flip graphic and rotation direction
		quaternion = Quaternion(0, 0, 1, 0);
		circleDirection = "RIGHT";
	else:
		quaternion = Quaternion(0, 0, 0, 1);
		circleDirection = "LEFT";
	Globals.circleDiameter = circleDiameter;
	Globals.circleDirection = circleDirection;
