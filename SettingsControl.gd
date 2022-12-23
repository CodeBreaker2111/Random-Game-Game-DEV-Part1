extends Control

func _on_button_back():
	get_tree().change_scene("res://UI1.tscn")


func _on_BG_toggled(button_pressed):
	Settings.BG = button_pressed
	if Settings.BG == false:
		$Back_Ground.hide()
	if Settings.BG == true:
		$Back_Ground.show()
