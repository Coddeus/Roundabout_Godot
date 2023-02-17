extends KinematicBody2D

var velocity = Vector2(0, -1000)


func _physics_process(delta):
	
	if position[0] > 3840 or position[0] < 0 or position[1] >= 2160 or position[1] <= 0:
		global.attempts += 1
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
	
	var collisionInfo = move_and_collide(velocity * delta)
	if collisionInfo:
		if collisionInfo.collider != get_node("../Paddle"):
			removeBrick(collisionInfo)
		velocity = velocity.bounce(collisionInfo.normal)

func removeBrick(collisionInfo):
	collisionInfo.collider.queue_free()
	if get_node("../Bricks").get_child_count()==0:
		print("You win!")
