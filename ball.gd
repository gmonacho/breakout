extends CharacterBody2D

signal ball_collided(collider_id: int)

const SPEED = 300

func _ready():
	start_ball(position)

func _process(delta: float):
	pass
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * SPEED * delta)
	
	if !collision:
		return

	velocity = velocity.bounce(collision.get_normal())
	
	ball_collided.emit(collision.get_collider_id())
	
func start_ball(start_position: Vector2):
	randomize()
	velocity = Vector2(0, 1).normalized()
