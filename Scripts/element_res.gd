class_name element extends Resource

@export_category("id")
@export var name: String
@export var pic: Texture

@export_category("Offensive Effectiveness")
@export var weakAgainst: Array[element]
@export var strongAgainst: Array[element]
@export var noEffect: Array[element]

@export_category("Defensive Effectiveness")
@export var weakTo: Array[element]
@export var ressistTo: Array[element]
@export var immuneTo: Array[element]
