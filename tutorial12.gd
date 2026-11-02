extends Node2D
func _process(delta: float) -> void:
	if $"..".tutorial_count==10 and Global.start==false:
		show()
	else:
		hide()
