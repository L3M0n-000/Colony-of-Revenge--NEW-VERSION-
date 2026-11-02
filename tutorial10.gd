extends ColorRect
func _process(delta: float) -> void:
	if $"..".tutorial_count==4:
		show()
	else:
		hide()
