extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.use_accumulated_input
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent):
	if event is InputEventMouseMotion:
		var collision_position: Vector2 = Vector2(get_viewport().get_mouse_position())
		#print(str(self.position.x) + "    " + str(self.position.y))
		print(collision_position)
		self.position = self.get_global_mouse_position()
		
