extends Button


func _on_pressed() -> void:
	if $"..".tutorial_count==4 and Global.tutorial==true:
		$"..".tutorial_count=5
	$AudioStreamPlayer.play()
	Global.start = true
	hide()
