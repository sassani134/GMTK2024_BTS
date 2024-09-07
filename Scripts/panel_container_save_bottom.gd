extends PanelContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_save_pressed() -> void:
	pass # Replace with function body.

func _on_button_return_pressed() -> void:
	SceneSwitcher.switch_scene("res://Scenes/start_scene.tscn")


func _on_button_load_pressed() -> void:
	pass # Replace with function body.
