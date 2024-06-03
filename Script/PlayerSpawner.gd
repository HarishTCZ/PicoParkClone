extends Node2D

var player_scene = preload("res://Scenes/Main_Character.tscn")
var player = null


func _process(_delta):
	if player == null:
		var new_obj = player_scene.instantiate()
		new_obj.position = position
		get_parent().add_child(new_obj)
		player = new_obj
