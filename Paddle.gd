extends KinematicBody2D


# Declare member variables here. 

var angle

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseMotion:
		angle = event.position.angle_to_point(Vector2(1920, 1080)) # atan2(event.position[1]-1080, event.position[0]-1920)
		print(angle)
		$Paddle.position = Vector2(1000*cos(angle), 1000*sin(angle))
		$Paddle.rotation = angle - PI/2
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _delta_process(_delta):
	pass
