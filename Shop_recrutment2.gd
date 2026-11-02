extends Button
var amount = round(5*(1+(Global.Act_progress/4)))
func _process(delta: float) -> void:
	$Label.text="X"+str(round(5*(1+(Global.Act_progress/4))))
	$Label2.text="YOU HAVE X"+str(Global.ant2_num)


func _on_pressed() -> void:
	if Global.curreny>=50:
		Global.curreny-=50
		Global.ant2_num+=amount
		Global.ant2_num_m+=amount
		$AudioStreamPlayer.play()
		if Global.tutorial==true:
			if Global.curreny<=0:
				$"..".tutorial_count=2
