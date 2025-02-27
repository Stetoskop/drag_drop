extends RigidBody2D

func _ready() -> void:
	gravity_scale = 1.0  # Enable default gravity effect

func _process(delta: float) -> void:
	var force = 100  # The strength of the force applied
	var torque_strength = 500  # The strength of the torque applied

	if Input.is_action_pressed("rotate_left"):
		# Apply force to the left
		apply_impulse(Vector2.ZERO, Vector2(-force, 0))  # Move left
		apply_torque(torque_strength)  # Rotate left
		print("left")
	elif Input.is_action_pressed("rotate_right"):
		# Apply force to the right
		apply_impulse(Vector2.ZERO, Vector2(force, 0))  # Move right
		apply_torque(-torque_strength)  # Rotate right
		print("right")
