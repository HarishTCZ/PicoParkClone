extends Area2D
#use it for fall zone,traps,enemy

@onready var timer = $Timer
@onready var character = %Character

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("You Ded")
		character.death()
		timer.start() #starts timer
	

func _on_timer_timeout(): #when timer finishes
	get_tree().reload_current_scene()
	
