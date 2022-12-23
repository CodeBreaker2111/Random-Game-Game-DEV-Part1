extends Control

const mainMenue = preload("res://UI1.tscn")

func _ready():
	if LevelFait.won == false:
		$Fait.text = "You Died!"
	else:
		$Fait.text = "You Won!"
	var lives = LevelFait.lives
	var livesString = String(lives)
	$Label.text = livesString


func _on_main_menue():
	get_tree().change_scene_to(mainMenue)
