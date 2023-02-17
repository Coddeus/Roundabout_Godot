extends Label


func _ready():
	var attempt = global.attempts
	text = "Attempt "+str(attempt)
