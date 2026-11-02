extends ColorRect
func _process(delta: float) -> void:
	if $"..".tutorial_count==2:
		show()
	else:
		hide()
