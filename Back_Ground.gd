extends Node2D

func _process(delta) -> void:
	var windowSize = get_viewport().get_visible_rect().size
	var textureSize = $BG_Texture.texture.get_size()
	$BG_Texture.scale = windowSize / textureSize
	if windowSize / textureSize == Vector2(3.2, 2.943787):
		$BG_Texture.position = Vector2(955, 500)
