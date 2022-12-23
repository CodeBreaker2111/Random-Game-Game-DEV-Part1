extends Control
const settings = preload("res://Settings.tscn")

func _process(delta) -> void:
	pass

func _settings_pressed():
	get_tree().change_scene_to(settings)


func _on_Level_1_pressed():
	get_tree().change_scene("res://Level1.tscn")

func _ready():
	if Settings.BG == false:
		$Back_Ground.hide()
	if Settings.BG == true:
		$Back_Ground.show()
