extends XROrigin3D
@onready var camera1 = $XRCamera3D;
@onready var lastPos = camera1.position.z;
var turnStr = 0.5;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
