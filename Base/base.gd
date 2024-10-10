extends Node3D

@export var max_health: int = 5
var current_health: int:
	set(health_in):
		current_health = health_in
		label_3d.text = str(current_health)
		print("health was changed")
		if current_health < 1:
			get_tree().reload_current_scene()
			pass
		pass

@onready var label_3d: Label3D = $Label3D

func _ready() -> void:
	current_health = max_health

func take_damage() -> void:
	current_health -= 1