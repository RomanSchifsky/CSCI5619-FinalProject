extends Node3D

var sliderPosition = Vector3(0,0,0);
var sliderDistance = Vector3(0,0,0);

func _process(delta):
	sliderPosition = $"../Slider".position;
	sliderDistance = sliderPosition.distance_to($"..".position);
	scale = Vector3(sliderDistance, sliderDistance, sliderDistance);
	$"../MeshInstance3D/Label3D".text = sliderDistance;
