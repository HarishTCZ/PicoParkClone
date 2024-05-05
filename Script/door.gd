extends Area2D
@onready var animated_sprite = $AnimatedSprite2D
@onready var game_manager = %GameManager

var playerinside = false

func _ready():
	animated_sprite.play("Closed")

func _on_body_entered(_body):
	playerinside = true
	
func _on_body_exited(_body):
	playerinside = false
	
	
func _process(_delta):
	if game_manager.key == 1 and Input.is_action_just_pressed("Interact") and playerinside: #key to open door
		animated_sprite.play("Open")
		await get_tree().create_timer(1.0).timeout
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1		
				
		var next_level_path = "res://Levels/Level" + str(next_level_number) + ".tscn"
		get_tree().change_scene_to_file(next_level_path)
	elif playerinside and game_manager.key != 1:
		print("Door is locked")
