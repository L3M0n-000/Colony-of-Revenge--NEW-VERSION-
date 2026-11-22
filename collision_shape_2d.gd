extends CollisionShape2D
func _process(delta: float) -> void:
	if $"../../..".tutorial_count!=1:
		disabled=true
	else:
		disabled=false
