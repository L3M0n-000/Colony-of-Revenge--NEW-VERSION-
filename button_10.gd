extends Button
var len = len(Global.Act1_lvl_antnum)
const type = 9
func _ready() -> void:
	var len = len(Global.Act1_lvl_antnum)
	if Global.map_generation[9]==0:
		Global.map_generation[9]=randi_range(0,len+1)
		Global.map_generation[9]=len
	if Global.map_generation[9]<len:
		$Sprite2D.show()
	if Global.map_generation[9]==len:
		$AnimatedSprite2D.show()
	if Global.map_generation[9]==len+1:
		$Sprite2D2.show()

func _process(delta: float) -> void:
	if Global.Act_progress<10:
		disabled=true
	else:
		disabled=false
	if Global.Act_progress>10:
		if Global.map_generation[9]<len:
			$Sprite2D.hide()
			$Sprite2D4.show()
		if Global.map_generation[9]==len:
			$AnimatedSprite2D.hide()
			$AnimatedSprite2D2.show()

func _on_pressed() -> void:
	Global.act+=1
	if Global.map_generation[type]<len:
		Global.Act1_level_type=Global.map_generation[type]
		$"../CanvasLayer/ColorRect".scene="res://Battle.tscn"
		$"../CanvasLayer/ColorRect".on=true
	if Global.map_generation[type]==len:
		$"../CanvasLayer/ColorRect".scene="res://Rest.tscn"
		$"../CanvasLayer/ColorRect".on=true
	if Global.map_generation[type]==len+1:
		$"../CanvasLayer/ColorRect".scene="res://upgrade.tscn"
		$"../CanvasLayer/ColorRect".on=true
	if Global.map_generation[type]==len+2:
		$"../CanvasLayer/ColorRect".scene="res://shop.tscn"
		$"../CanvasLayer/ColorRect".on=true
