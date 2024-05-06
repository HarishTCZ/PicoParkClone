extends StaticBody2D

var activated = false
const GRAVITY = 9.81 
const FALL_SPEED = 300 

var fall_timer = 0
var elapsed_time = 0
const HIDE_AFTER_SECONDS = 2.0

func _ready():
	fall_timer = 0

func _process(delta):
	if activated:
		await get_tree().create_timer(0.5).timeout
		fall_timer += delta
		elapsed_time += delta
		var distance_to_fall = FALL_SPEED * delta
		var gravity_effect = GRAVITY * delta
		translate(Vector2(0, distance_to_fall - gravity_effect))
		
		if elapsed_time >= HIDE_AFTER_SECONDS:
			hide()

func _on_area_2d_body_entered(_body):
	activated = true
