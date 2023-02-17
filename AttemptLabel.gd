extends Label


func _ready():
# warning-ignore:unsafe_property_access
	var attempt = global.attempts
	text = "Attempt "+str(attempt)
