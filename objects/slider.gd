extends XRToolsPickable


# Called when the node enters the scene tree for the first time.
var originalPosition;
func _ready():
	originalPosition = position;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Keep the slider locked to the x axis
	position.y = originalPosition.y; 
	position.z = originalPosition.z;
	
