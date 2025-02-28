extends RigidBody2D

var jump_strength: float = 300.0  # Increased from 100 for a more noticeable jump

func _ready() -> void:
	# Any initialization code can go here
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		# First parameter is the position offset (Vector2.ZERO means centered)
		# Second parameter is the actual impulse vector (negative Y is up in Godot)
		apply_impulse(Vector2.ZERO, Vector2(0, -jump_strength))
		print("jump")
