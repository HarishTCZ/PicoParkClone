extends StaticBody2D

var is_open = false
@export var text : String = "+ for Down, - for Up"
@export var open_offset = Vector2(0, -100)  # Adjust the offset for opening the door
var closed_position: Vector2
var move_speed = 200  # Adjust the speed of the door movement

func _ready():
	closed_position = position

func _physics_process(delta):
	if is_open:
		if position.distance_to(closed_position + open_offset) > 0.1:  # Check if door is not fully open
			position = position.move_toward(closed_position + open_offset, move_speed * delta)
	else:
		if position.distance_to(closed_position) > 0.1:  # Check if door is not fully closed
			position = position.move_toward(closed_position, move_speed * delta)

func open_door():
	if not is_open:
		is_open = true
		

func close_door():
	if is_open:
		is_open = false
		
