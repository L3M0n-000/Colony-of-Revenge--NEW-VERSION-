extends CheckButton
func _process(delta: float) -> void:
	if button_pressed==true:
		InputMap.action_erase_events("click")
		var new_key = InputEventKey.new()
		new_key.physical_keycode=KEY_E
		InputMap.action_add_event("click",new_key)
	else:
		InputMap.action_erase_events("click")
		var new_key = InputEventMouseButton.new()
		new_key.button_index=MOUSE_BUTTON_LEFT
		InputMap.action_add_event("click",new_key)
