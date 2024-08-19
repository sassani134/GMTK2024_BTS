extends Control

func _on_button_team_pressed() -> void:
	SceneSwitcher.switch_scene("res://Scenes/team_build_scene.tscn")



func _on_button_quick_play_pressed() -> void:
	pass # Replace with function body.


func _on_button_versus_pressed() -> void:
	pass # Replace with function body.


func _on_button_option_pressed() -> void:
	pass # Replace with function body.


func _on_button_quit_pressed() -> void:
	get_tree().quit()
