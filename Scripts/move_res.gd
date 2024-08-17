class_name move extends Resource

@export_category("id")
@export var name: String
@export var pic: Texture
@export var type0: Array[element]


@export_category("stats")
@export var power: int
@export var acc: int
@export var pp: int

@export var range_min: int = 1
@export var range_max: int
@export var zone_min: int = 1
@export var zone_max: int = 1

@export_category("Target")
@export var target_self: bool = false
@export var target_ally: bool = false
@export var target_foe: bool = true
@export var target_empty: bool = false
