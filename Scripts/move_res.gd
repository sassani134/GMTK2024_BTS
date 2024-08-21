class_name move extends Resource

@export_category("id")
@export var name: String
@export var pic: Texture
@export var moveElement: element


@export_category("stats")
@export var power: int = 1
@export var acc: int = 100
@export var pp: int = 10
@export_category("range stats")
@export var range_min: int = 1
@export var range_max: int
@export var zone_min: int = 1
@export var zone_max: int = 1
@export var canChangeRange: bool = true
@export var lineZone: bool = false
@export_category("Target")
@export var target_self: bool = false
@export var target_ally: bool = false
@export var target_foe: bool = true
@export var target_empty: bool = false
@export_category("Other")
@export var critChance: int = 1
