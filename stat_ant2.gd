extends Sprite2D

func _process(delta: float) -> void:
	$Label2.text="ATK: "+str(Global.ant_atk_type[1])+"\n"+"HEALTH: "+str(Global.ant_type_health_ally[1])
	$Label3.text="X"+str(Global.ant2_num)+"/"+str(Global.ant2_num_m)
