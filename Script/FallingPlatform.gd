extends StaticBody2D
@onready var animation_player = $AnimationPlayer


func _ready():
	animation_player.play("Idle")

func _on_area_2d_body_entered(_body:CharacterBody2D):
	print("fall")
	animation_player.play("Fall")
