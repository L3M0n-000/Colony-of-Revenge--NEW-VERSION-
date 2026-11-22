extends Button
var once = false

func _on_pressed() -> void:
	if once==false:
		Global.ant_num=Global.ant_num_m
		Global.ant2_num=Global.ant2_num_m
		Global.ant3_num=Global.ant3_num_m
		Global.Act_progress+=1
		if Global.taxed==true:
			Global.curreny+=Global.taxation
		$"../../CanvasLayer/ColorRect".scene="res://map.tscn"
		$"../../CanvasLayer/ColorRect".on=true
		$AudioStreamPlayer.play()
		once=true
