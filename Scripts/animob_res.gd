class_name Animob extends Resource

@export_category("id")
@export var name: String
@export var type0: Array[element]
@export var type1: Array[element]
@export var pic: Texture

@export_category("stats")
@export var hp: int
@export var atk: int
@export var def: int
@export var pm: int = 3
@export var moves: Array[move]
@export var evasion: int = 1
@export var accuracy: int = 100
@export var crit: int = 1

@export_category("TRPG")
@export var tackle: int
@export var escape: int
@export var size: int = 1
@export var scale: int = 1