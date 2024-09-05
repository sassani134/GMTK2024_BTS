class_name elementDebug extends Resource
enum allElements { Rock, Paper, Scissors}
@export_category("id")
@export var name: allElements
@export var pic: Texture


@export_category("Offensive Effectiveness")
@export var weakAgainst: Array[allElements]
@export var strongAgainst: Array[allElements]
@export var noEffect: Array[allElements]

@export_category("Defensive Effectiveness")
@export var weakTo: Array[allElements]
@export var ressistTo: Array[allElements]
@export var immuneTo: Array[allElements]
