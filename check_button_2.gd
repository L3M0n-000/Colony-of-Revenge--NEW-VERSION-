extends CheckButton
func _process(delta: float) -> void:
	if button_pressed==true:
		Global.icon_toggle=true
	else:
		Global.icon_toggle=false
