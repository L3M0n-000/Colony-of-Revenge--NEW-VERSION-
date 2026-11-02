extends Button


func _on_pressed() -> void:
	Global.Act_progress+=1
	if Global.taxed==true:
		Global.curreny+=Global.taxation
	$"../CanvasLayer/ColorRect".scene="res://map.tscn"
	$"../CanvasLayer/ColorRect".on=true
	$AudioStreamPlayer.play()
