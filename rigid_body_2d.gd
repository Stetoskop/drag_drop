extends CharacterBody2D

const SPEED = 300.0


func _physics_process(delta: float) -> void:
	pass
func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	var direction = get_global_mouse_position() - global_position
	apply_central_force(direction * 1000.0 * delta)
