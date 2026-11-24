extends CheckButton
func _ready() -> void:
	if Global.icon_toggle==true:
		button_pressed=true
	else:
		button_pressed=false
func _process(delta: float) -> void:
	if button_pressed==true:
		Global.icon_toggle=true
	else:
		Global.icon_toggle=false
