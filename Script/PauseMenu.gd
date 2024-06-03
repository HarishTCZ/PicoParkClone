extends Control

func _ready():
	hide()
	

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = not get_tree().paused
		self.visible = not self.visible


func _on_resume_pressed():
	get_tree().paused = false
	self.visible = false

func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	

func _on_quit_pressed():
	get_tree().quit()
