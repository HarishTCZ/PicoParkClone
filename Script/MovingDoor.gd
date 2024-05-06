extends StaticBody2D
@onready var animation_player = $AnimationPlayer
var playfinish = false

func door():
	animation_player.play("Door")	
	if playfinish:
		animation_player.pause()

func _on_animation_player_animation_finished(_anim_name):
	playfinish = true
