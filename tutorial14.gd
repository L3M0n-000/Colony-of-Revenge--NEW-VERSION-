extends Node2D
func _process(delta: float) -> void:
	if $"..".tutorial_count==1:
		show()
	else:
		hide()
