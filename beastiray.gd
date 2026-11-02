extends Button


func _on_pressed() -> void:
	if $"../TextureRect".on==true:
		$AudioStreamPlayer2.play()
		$"../TextureRect".on=false
	else:
		$AudioStreamPlayer.play()
		$"../TextureRect".on=true
