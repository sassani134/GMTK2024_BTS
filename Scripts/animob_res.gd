class_name Animob extends Resource

@export_category("id")
@export var name: String
# setget Array 2 elements
# elements cannot be the same
@export var aniMobElements: Array[element]
@export var pic: Texture
@export var learnMoves: Array[move]

@export_category("stats")
@export var hp: int = 10
@export var atk: int = 1
@export var def: int = 1
@export var pm: int = 3
# Add a getset were the set:
# Lock the array at 4
# Lock the array to match learnMoves
@export var moves: Array[move]
@export var evasion: int = 1
@export var accuracy: int = 100
@export var crit: int = 1

@export_category("TRPG")
@export var tackle: int
@export var escape: int
@export var size: int = 1
@export var scale: int = 1
