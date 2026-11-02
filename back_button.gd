extends Button


func _on_pressed() -> void:
	$AudioStreamPlayer.play()
	Global.ant_exist=false
	Global.ant_exist2=false
	Global.ant_exist3=false
	Global.start=true
	Global.tutorial=false
	$"../../../CanvasLayer/ColorRect".scene="res://Main_menu.tscn"
	$"../../../CanvasLayer/ColorRect".on=true
