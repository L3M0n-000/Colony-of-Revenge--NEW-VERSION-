extends ColorRect
var on = false
func _process(delta: float) -> void:
	if on==true:
		position.y=lerp(position.y,277.0,0.1)
	else:
		position.y=lerp(position.y,807.0,0.1)
