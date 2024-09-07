class_name element2 extends Resource
enum allElemnts { Normal, Fire, Fight, Water, Fly, Grass,
poison, Electric, Ground, Psy, Rock, Ice, Bug, Dragon,
Ghost, Dark, Steel, Fairy
}
@export_category("id")
@export var name: String
@export var pic: Texture


@export_category("Offensive Effectiveness")
# @export var weakAgainst: Array[allElemnts]
@export_flags(allElemnts) var weakAgainst
@export var strongAgainst: Array[allElemnts]
@export var noEffect: Array[allElemnts]

@export_category("Defensive Effectiveness")
@export var weakTo: Array[allElemnts]
@export var ressistTo: Array[allElemnts]
@export var immuneTo: Array[allElemnts]
