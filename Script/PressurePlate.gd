extends Area2D

@onready var animated_sprite = $AnimatedSprite2D
@export var pressureplate_door: Node = null

var door_open = false

func _on_body_entered(_body):
	if not door_open:
		door_open = true
		animated_sprite.play("Pressed")
		pressureplate_door.open_door()

func _on_body_exited(_body):
	if door_open:
		door_open = false
		animated_sprite.play("NotPressed")
		pressureplate_door.close_door()

func _ready():
	animated_sprite.play("NotPressed")
