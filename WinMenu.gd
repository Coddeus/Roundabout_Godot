extends Control

func _on_TryAgain_pressed():
# warning-ignore:return_value_discarded
# warning-ignore:unsafe_property_access
	global.attempts = 1
# warning-ignore:unsafe_property_access
	get_node("../Ball").PauseMenuNode
	print(get_node("../Ball").PauseMenuNode)
	# self.add_sibling(get_node("../Ball").PauseMenuNode)
	get_tree().reload_current_scene()


func _on_MainMenu_pressed():
	get_tree().quit()
