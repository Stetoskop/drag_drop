extends RigidBody2D

var move_force: float = 200.0  # Strength of the force applied
var rotation_torque: float = 200.0  # Strength of the torque applied

func _ready() -> void:
	# Set the default properties if needed
	gravity_scale = 1.0  # Enable gravity

func _process(delta: float) -> void:
	if Input.is_action_pressed("rotate_left"):
		# Apply force to the left
		apply_impulse(Vector2.ZERO, Vector2(-move_force, 0))
		apply_torque(rotation_torque)  # Rotate counterclockwise
	elif Input.is_action_pressed("rotate_right"):
		# Apply force to the right
		apply_impulse(Vector2.ZERO, Vector2(move_force, 0))
		apply_torque(-rotation_torque)  # Rotate clockwise
