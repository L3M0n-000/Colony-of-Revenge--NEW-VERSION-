extends Button


func _on_pressed() -> void:
	$AudioStreamPlayer.play()
	Global.dead=true
	Global.tutorial=false
	$"../../../CanvasLayer/ColorRect".scene="res://Main_menu.tscn"
	$"../../../CanvasLayer/ColorRect".on=true
