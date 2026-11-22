extends CollisionShape2D
func _process(delta: float) -> void:
	if $"../../..".tutorial_count!=3:
		disabled=true
	else:
		disabled=false
