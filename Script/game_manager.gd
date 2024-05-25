extends Node

@onready var pause = $PauseMenu
var points = 0
var key = 0


func add_point():
	points +=1 
	print(points)

func add_key():
	key +=1
	
func _input(event):
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
	
	if Input.is_action_just_pressed("pause"):
		var current_value : bool = get_tree().paused
		get_tree().paused = not current_value
		
