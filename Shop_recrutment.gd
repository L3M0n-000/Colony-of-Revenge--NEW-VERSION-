extends Button
var amount = round(10*(1+(Global.Act_progress/4)))
func _process(delta: float) -> void:
	$Label.text="X"+str(round(10*(1+(Global.Act_progress/4))))
	$Label2.text="YOU HAVE X"+str(Global.ant_num)


func _on_pressed() -> void:
	if Global.curreny>=50:
		Global.curreny-=50
		Global.ant_num+=amount
		Global.ant_num_m+=amount
		$AudioStreamPlayer.play()
		if Global.tutorial==true:
			if Global.curreny<=200:
				$"..".tutorial_count=1
