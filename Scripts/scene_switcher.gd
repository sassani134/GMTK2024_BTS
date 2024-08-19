extends Node

var current_scene =  null

func _ready() -> void:
	var root = get_tree().root
	current_scene = root.get_child(get_child_count() - 1)
	print_debug(current_scene)



# SceneSwitcher.switch_scene(scene_path)
func switch_scene(res_path: String) -> void:
	call_deferred("_deferred_switch_scene", res_path)

func _deferred_switch_scene(res_path: String) -> void:
	current_scene.free()
	var s = load(res_path)
	current_scene = s.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
