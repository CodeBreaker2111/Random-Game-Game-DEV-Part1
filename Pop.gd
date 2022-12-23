extends Node2D


func _process(delta) -> void:
	if Input.is_action_pressed("ui_left"):
		$Area2D.position += Vector2(-10, 0)
	if Input.is_action_pressed("ui_right"):
		$Area2D.position += Vector2(10, 0)
