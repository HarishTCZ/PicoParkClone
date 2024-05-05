extends Control
@onready var label = $TextBox/MarginContainer/Label
@export var labeltext : String = "Deafult Text"

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = labeltext


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
