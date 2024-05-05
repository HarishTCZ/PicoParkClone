extends Area2D
@onready var control = $Control

func _ready():
	control.visible = false

func _on_body_entered(_body):
	control.visible = true

func _on_body_exited(_body):
	control.visible = false
