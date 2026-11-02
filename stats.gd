extends Button
func _on_pressed() -> void:
	if $"../TextureRect2".on==true:
		$AudioStreamPlayer2.play()
		$"../TextureRect2".on=false
	else:
		$AudioStreamPlayer.play()
		$"../TextureRect2".on=true
