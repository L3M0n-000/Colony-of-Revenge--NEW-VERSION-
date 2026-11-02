extends ColorRect
var on =false
var value: float = 0.0
var scene

func _ready() -> void:
	if Global.first_time==false:
		value=1.0

func _process(delta: float) -> void:
	if on==true:
		self.material.set_shader_parameter("factor",value)
		value = lerp(value,1.0,0.045)
		if value>=0.97:
			get_tree().change_scene_to_file(scene)
	else:
		self.material.set_shader_parameter("factor",value)
		value = lerp(value,0.0,0.045)
