extends CheckButton
func _process(delta: float) -> void:
	if button_pressed==true:
		Global.remove_toggle=true
	else:
		Global.remove_toggle=false
