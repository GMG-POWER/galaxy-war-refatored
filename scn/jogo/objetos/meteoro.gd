extends RigidBody2D

func _process(_delta):
	if position.y > 750:
		queue_free()

func _on_body_entered(body):
	pass 
