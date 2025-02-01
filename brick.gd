extends StaticBody2D



func _on_brick_hit_box_body_exited(body: Node2D) -> void:
	queue_free()
