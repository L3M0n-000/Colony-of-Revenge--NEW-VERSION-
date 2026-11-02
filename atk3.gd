extends Button
@onready var cost=$"..".cost

func _process(delta: float) -> void:
	$Label.text="ATK: "+str(Global.ant_atk_type[1])

func _on_pressed() -> void:
	if Global.tutorial==true:
		$"..".tutorial_count=3
	if Global.curreny>=$"..".cost:
		Global.curreny-=$"..".cost
		$"..".cost=$"..".cost*2
		Global.ant_atk_type[1]+=1
		$AudioStreamPlayer.play()
