class_name elementDebug extends Resource
enum allElements { Rock, Paper, Scissors}
# ROCK, PAPER, SCISSORS
@export_category("id")
@export var name: allElements
@export var pic: Texture


@export_category("Offensive Effectiveness")
@export_flags("ROCK", "PAPER", "SCISSORS") var weakAgainst
@export_flags("ROCK", "PAPER", "SCISSORS") var strongAgainst
@export_flags("ROCK", "PAPER", "SCISSORS") var noEffect


@export_category("Defensive Effectiveness")
@export_flags("ROCK", "PAPER", "SCISSORS") var weakTo
@export_flags("ROCK", "PAPER", "SCISSORS") var ressistTo
@export_flags("ROCK", "PAPER", "SCISSORS") var immuneTo 
