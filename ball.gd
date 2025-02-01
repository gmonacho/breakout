extends CharacterBody2D

const SPEED = 300 
# Called when the node enters the scene tree for the first time.
func _ready():
	start_ball(position)

func _process(delta: float):
	pass
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * SPEED * delta)
	
	if !collision:
		return

	velocity = velocity.bounce(collision.get_normal())
	
func start_ball(start_position: Vector2):
	randomize()
	velocity = Vector2(0, 1).normalized()
