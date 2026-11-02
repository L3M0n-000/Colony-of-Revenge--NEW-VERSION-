extends Sprite2D

func _process(delta: float) -> void:
	$Label2.text="ATK: "+str(Global.ant_atk_type[2])+"\n"+"HEALTH: "+str(Global.ant_type_health_ally[2])
	$Label3.text="X"+str(Global.ant3_num)+"/"+str(Global.ant3_num_m)
