extends Button
var count=0

func _on_pressed() -> void:
	count+=1
	$AudioStreamPlayer.play()

func _process(delta: float) -> void:
	if count==1:
		$"../Label".show()
	if count==2:
		$"../CanvasLayer/ColorRect".scene="res://Main_menu.tscn"
		$"../CanvasLayer/ColorRect".on=true
