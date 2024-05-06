extends Area2D
@onready var animated_sprite = $AnimatedSprite2D
@export var moving_door: Node = null
var press = false


func _on_body_entered(_body):
	animated_sprite.play("Pressed")
	press = true

func _ready():
	animated_sprite.play("NotPressed")
	
func _process(_delta):
	if press:
		moving_door.door()

