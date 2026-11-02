extends Sprite2D
func _ready() -> void:
	if Global.ant2_found==false:
		self.modulate=Color(0,0,0,0.40)
		$Label.hide()
	else:
		$Label.show()
