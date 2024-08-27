class_name element2 extends Resource
enum allElemnts { Normal, Fire, Fight, Water, Fly, Grass,
poison, Electric, Ground, Psy, Rock, Ice, Bug, Dragon,
Ghost, Dark, Steel, Fairy
}
@export_category("id")
@export var name: String
@export var pic: Texture


@export_category("Offensive Effectiveness")
@export var weakAgainst: Array[String]
@export var strongAgainst: Array[String]
@export var noEffect: Array[element]

@export_category("Defensive Effectiveness")
@export var weakTo: Array[element]
@export var ressistTo: Array[element]
@export var immuneTo: Array[element]
