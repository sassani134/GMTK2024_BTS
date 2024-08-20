extends TileMap

var GridSize: int = 4
var Dic: Dictionary = {}

func  _ready() -> void:
	for x in GridSize:
		for y in GridSize:
			Dic[str(Vector2(x,y))] = {
				"Type" : "Grass"
			}
			set_cell(0, Vector2(x,y),0, Vector2i(2,1),0)
	print(Dic)

func _process(delta: float) -> void:
	var tile = local_to_map(get_global_mouse_position())
	
	#for x in GridSize:
		#for y in GridSize:
			#erase_cell(1,Vector2(x,y))

	if Dic.has(str(tile)):
		set_cell(1,tile,1, Vector2i(0,0),0)
