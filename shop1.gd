extends Button
var type=0
func _ready() -> void:
	type=randi_range(0,len(Global.artifacts)-1)
	text+=str(Global.artifacts_cost[type])
func _process(delta: float) -> void:
	$Label.text=Global.artifacts[type]
	text="BUY $"+str(Global.artifacts_cost[type])
	if type == 0:
		$Sprite2D4.show()
	else:
		$Sprite2D4.hide()
	if type == 1:
		$Sprite2D9.show()
	else:
		$Sprite2D9.hide()
	if type == 2:
		$Sprite2D7.show()
	else:
		$Sprite2D7.hide()
	if type == 3:
		$Sprite2D8.show()
	else:
		$Sprite2D8.hide()
	if type == 4:
		$Sprite2D3.show()
	else:
		$Sprite2D3.hide()
	if type == 5:
		$Sprite2D2.show()
	else:
		$Sprite2D2.hide()
	if type == 6:
		$Sprite2D.show()
	else:
		$Sprite2D.hide()
	if type == 7:
		$Sprite2D10.show()
	else:
		$Sprite2D10.hide()
	if type == 8:
		$Sprite2D5.show()
	else:
		$Sprite2D5.hide()
	if type == 9:
		$Sprite2D6.show()
	else:
		$Sprite2D6.hide()
func _on_pressed() -> void:
	if Global.curreny>=Global.artifacts_cost[type]:
		Global.curreny-=Global.artifacts_cost[type]
		Global.artifacts_on[type]=true
		$AudioStreamPlayer.play()
		hide()


func _on_mouse_entered() -> void:
	$Label2.text=Global.artifacts_desc[type]
	$Label2.show()


func _on_mouse_exited() -> void:
	$Label2.hide()
