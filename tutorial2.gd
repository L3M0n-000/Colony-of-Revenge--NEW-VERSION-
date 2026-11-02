extends ColorRect
func _ready() -> void:
	if Global.tutorial==true:
		show()
func _process(delta: float) -> void:
	if Global.tutorial==true:
		if $"..".tutorial_count==1:
			hide()
