extends KinematicBody2D


# Declare member variables here. Examples:
var velocity = Vector2(0, -1000)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var collisionInfo = move_and_collide(velocity * delta)
	if collisionInfo:
		# collisionInfo.collider.queue_free()
		velocity = velocity.bounce(collisionInfo.normal)
