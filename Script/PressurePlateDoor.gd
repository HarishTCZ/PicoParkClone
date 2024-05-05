extends StaticBody2D

var animation_player: AnimationPlayer
var is_open = false
var open_position: Vector2
var closed_position: Vector2

func _ready():
	animation_player = $AnimationPlayer
	closed_position = position

func open_door():
	if not is_open:
		is_open = true
		open_position = position  # Store the current position when opening
		animation_player.play("Open")

func close_door():
	if is_open:
		is_open = false
		animation_player.stop()  # Stop any ongoing animation
		animation_player.set("Close", 0)  # Set animation to close
		animation_player.seek(0)  # Seek to the beginning of the animation
		animation_player.play("Close")  # Play the close animation from the current position
