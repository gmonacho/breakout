extends AnimatableBody2D

var speed = 400

func get_direction() -> Vector2:
	var input_direction = Input.get_axis("left", "right")
	var direction = 1 if input_direction > 0 else -1
	if input_direction == 0:
		return Vector2(0, 0)
	
	direction = 1 if input_direction > 0 else -1
	return Vector2(direction, 0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta):
	var direction = get_direction()
	move_and_collide(direction * speed * delta)
