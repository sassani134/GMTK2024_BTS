extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_item_list_character_item_selected(index: int) -> void:
	print("Character: ",index)
	pass # Replace with function body.


func _on_item_list_animob_item_selected(index: int) -> void:
	print("animob: ",index)
