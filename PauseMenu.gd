extends Control

var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if get_node("../WinMenu").visible == false and event.is_action_pressed("pause"):
# warning-ignore:unsafe_property_access
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	self.visible = is_paused


func _on_Resume_pressed():
# warning-ignore:unsafe_property_access
	self.is_paused = false

func _on_MainMenu_pressed():
	get_tree().quit()
