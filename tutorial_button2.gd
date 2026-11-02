extends Button
func _on_pressed() -> void:
	$AudioStreamPlayer.play()
	$"../..".tutorial_count=1
