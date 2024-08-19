@tool
extends ItemList

#"res://Resources/aniMobs/"
func get_all_file_paths(path: String) -> Array[String]:  
	var file_paths: Array[String] = []  
	var dir = DirAccess.open(path)  
	dir.list_dir_begin()  
	var file_name = dir.get_next()  
	while file_name != "":  
		var file_path = path + "/" + file_name  
		if dir.current_is_dir():  
			file_paths += get_all_file_paths(file_path)  
		else:  
			file_paths.append(file_path)  
		file_name = dir.get_next()  
	return file_paths



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var characters : Array[String] = get_all_file_paths("res://Resources/characters/")
	print_debug(characters)
	
	for c in characters:
		add_item(c)