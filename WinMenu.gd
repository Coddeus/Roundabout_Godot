extends Control


func _on_TryAgain_pressed():
# warning-ignore:return_value_discarded
	global.attempts = 1
	get_tree().reload_current_scene()


func _on_MainMenu_pressed():
	get_tree().quit()
