extends HSlider
var change = 0
func _ready() -> void:
	value=Global.difficulty_mod
	change=value

func _process(delta: float) -> void:
	#print(Global.difficulty_mod)
	$Label2.text="DIFFICULTY "+str(value)
	Global.difficulty_mod=max_value+0.1-value
	if change-value:
		change=value
		$AudioStreamPlayer.play()
