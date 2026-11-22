extends Button
var once = false

func _on_pressed() -> void:
	if once==false:
		once=true
		Global.Act_progress+=1
		if Global.taxed==true:
			Global.curreny+=Global.taxation
		$"../CanvasLayer/ColorRect".scene="res://map.tscn"
		$"../CanvasLayer/ColorRect".on=true
		$AudioStreamPlayer.play()
