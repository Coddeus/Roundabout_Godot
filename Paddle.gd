extends KinematicBody2D


# Declare member variables here. 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	var angle
	if event is InputEventMouseMotion:
		angle = event.position.angle_to_point(Vector2(1920, 1080))
		$Sprite.position = Vector2(1000*cos(angle), 1000*sin(angle))
		$Sprite.rotation = angle - PI/2
		$CollisionPolygon2D.rotation = angle - PI/2
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _delta_process(_delta):
	pass
