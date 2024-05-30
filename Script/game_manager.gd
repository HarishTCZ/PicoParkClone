extends Node

@onready var pause = $PauseMenu
var points = 0
var key = 0


func add_point():
	points +=1 
	print(points)

func add_key():
	key +=1
	
func _process(delta):
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
	
	
		
