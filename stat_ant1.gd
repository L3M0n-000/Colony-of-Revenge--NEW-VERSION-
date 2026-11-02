extends Sprite2D

func _process(delta: float) -> void:
	$Label2.text="ATK: "+str(Global.ant_atk_type[0])+"\n"+"HEALTH: "+str(Global.ant_type_health_ally[0])
	$Label3.text="X"+str(Global.ant_num)+"/"+str(Global.ant_num_m)
