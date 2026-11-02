extends Node2D
func _process(delta: float) -> void:
	if $"..".tutorial_count==3 and Global.tutorial==true:
		show()
	else:
		hide()
