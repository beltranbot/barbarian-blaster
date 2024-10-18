extends MarginContainer

@export var starting_gold := 150
@onready var label: Label = $Label

var gold: int:
	set(gold_in):
		gold = max(0, gold_in)
		label.text = "Gold: " + str(gold)

func _ready() -> void:
	gold = starting_gold
