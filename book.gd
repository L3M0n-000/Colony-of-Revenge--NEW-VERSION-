extends TextureRect
var on = false
func _process(delta: float) -> void:
	if on==true:
		position.y=lerp(position.y,-387.0,0.1)
	else:
		position.y=lerp(position.y,-1244.0,0.1)
