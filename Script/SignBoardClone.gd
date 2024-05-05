extends Area2D
@onready var e = $E
@onready var prompt = $Prompt
@onready var label = $Prompt/Label

@export var labelText: String = "Default Text"


var ee = false #prompt e

func _ready():
	e.visible = false
	prompt.visible = false
	label.text = labelText


func _process(_delta):
	if ee:
		if Input.is_action_just_pressed("Interact"):
			prompt.visible = not prompt.visible

func _on_body_entered(_body):
	e.visible = true
	ee = true

func _on_body_exited(_body):
	ee = false
	e.visible = false
	prompt.visible = false
