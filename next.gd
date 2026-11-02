extends Button


func _on_pressed() -> void:
	$AudioStreamPlayer.play()
	if Global.act<4:
		Global.curreny+=Global.cache1
		Global.ant_num_m+=Global.cache2
		Global.ant_num+=Global.cache2
		Global.ant2_num_m+=Global.cache3
		Global.ant2_num+=Global.cache3
		Global.ant3_num_m+=Global.cache4
		Global.ant3_num+=Global.cache4
		$"../../CanvasLayer/ColorRect".scene="res://map.tscn"
		$"../../CanvasLayer/ColorRect".on=true
		
	else:
		$"../../CanvasLayer/ColorRect".scene="res://cutscene2.tscn"
		$"../../CanvasLayer/ColorRect".on=true
