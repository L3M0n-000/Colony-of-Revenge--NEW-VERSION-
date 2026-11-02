extends Button


func _on_pressed() -> void:
	Global.Act1_level_type=8
	$"../CanvasLayer/ColorRect".scene="res://Battle.tscn"
	$"../CanvasLayer/ColorRect".on=true
