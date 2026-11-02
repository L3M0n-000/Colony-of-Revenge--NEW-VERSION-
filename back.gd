extends Button


func _on_pressed() -> void:
	if $"../Node2D".visible==false:
		$AudioStreamPlayer.play()
		$"../Node2D".show()
