extends KinematicBody2D

var velocity = Vector2(0, -1000)
onready var PauseMenuNode = get_node("../PauseMenu")

func _physics_process(delta):
	
	if position[0] > 3840 or position[0] < 0 or position[1] >= 2160 or position[1] <= 0:
# warning-ignore:unsafe_property_access
		global.attempts += 1
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
	
	var collisionInfo = move_and_collide(velocity * delta)
	if collisionInfo:
		if collisionInfo.collider != get_node("../Paddle"):
			removeBrick(collisionInfo)
		velocity = velocity.bounce(collisionInfo.normal)

func removeBrick(collisionInfo):
	print(str(collisionInfo.collider))
	if  "2B" in str(collisionInfo.collider):
		print("You win!")
		velocity = Vector2(0, 0)
# warning-ignore:unsafe_property_access
		get_node("../GUI").visible = false
# warning-ignore:unsafe_property_access
# warning-ignore:unsafe_property_access
		get_node("../WinMenu/VBoxContainer/Attempts").text = "Attempt: " + str(global.attempts)
# warning-ignore:unsafe_property_access
		get_node("../WinMenu").visible = true
	collisionInfo.collider.queue_free()
	# if get_node("../Bricks").get_child_count()==0: 		FOR ANOTHER GAMEMODE
