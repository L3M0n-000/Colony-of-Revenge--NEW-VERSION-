extends CheckButton
func _ready() -> void:
	if Global.remove_toggle==true:
		button_pressed=true
	else:
		button_pressed=false
func _process(delta: float) -> void:
	if button_pressed==true:
		Global.remove_toggle=true
	else:
		Global.remove_toggle=false
