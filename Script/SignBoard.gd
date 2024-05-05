extends Area2D
@onready var e = $E
@onready var text_box = $Control/TextBox
@onready var label = $Control/TextBox/MarginContainer/Label

#@onready var prompt = $Prompt
#@onready var label = $Prompt/Label
@export var labelText: String = "Default Text"
var ee = false #prompt e

func _ready():
	e.visible = false
	text_box.visible = false
	var text_with_line_breaks = labelText.replace("|", "\n")
	label.text = text_with_line_breaks


func _process(_delta):
	if ee:
		if Input.is_action_just_pressed("Interact"):
			text_box.visible = not text_box.visible
		

func _on_body_entered(_body):
	e.visible = true
	ee = true

func _on_body_exited(_body):
	e.visible = false
	ee = false
	text_box.visible = false
