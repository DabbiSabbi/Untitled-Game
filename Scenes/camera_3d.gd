extends Camera3D
var sensitivity = 0.004

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Node.PHYSICS_INTERPOLATION_MODE_OFF 
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
