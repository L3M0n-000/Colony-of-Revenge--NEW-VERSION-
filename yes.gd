extends Button


func _on_pressed() -> void:
	Global.tutorial=true
	Global.first_time=false
	$AudioStreamPlayer.play()
	$"../../CanvasLayer/ColorRect".scene="res://cutscene.tscn"
	$"../../CanvasLayer/ColorRect".on=true
