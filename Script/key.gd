extends Area2D

@onready var eSprite = $E
@onready var game_manager = %GameManager

var character = null
var picked_up = false

func _ready():
	eSprite.visible = false
	
func _on_body_entered(body):
	if body.name == "Character":
		eSprite.visible = true
		character = body

func _on_body_exited(body):
	if body.name == "Character":
		eSprite.visible = false
		character = null

func _process(_delta):
	if picked_up:
		update_key_position()
	elif character != null and eSprite.visible and Input.is_action_just_pressed("Interact"):
		game_manager.add_key()
		picked_up = true
		eSprite.visible = false

func update_key_position():
	if character != null:
		global_position = character.global_position 
		eSprite.visible = false
