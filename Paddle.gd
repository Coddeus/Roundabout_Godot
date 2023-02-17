extends KinematicBody2D


func _input(event):
	var angle
	if event is InputEventMouseMotion:
		angle = event.position.angle_to_point(Vector2(1920, 1080))
		$Sprite.position = Vector2(1000*cos(angle), 1000*sin(angle))
		$Sprite.rotation = angle - PI/2
		$CollisionPolygon2D.rotation = angle - PI/2
