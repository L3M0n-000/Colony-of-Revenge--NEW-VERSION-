extends ColorRect
func _ready() -> void:
	if Global.tutorial==true and Global.tutorial_count==0:
		show()
