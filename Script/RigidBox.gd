extends RigidBody2D
class_name RigidBox
@onready var character = %Character

func _integrate_forces(_state):
	angular_velocity = 0
	rotation_degrees = 0


func _on_area_2d_body_entered(_body:CharacterBody2D):
	character.pushblock = true


func _on_area_2d_body_exited(_body:CharacterBody2D):
	character.pushblock = false
