extends Button
var pressed_bool=false
var toggle = -1

func _process(delta: float) -> void:
	position.x = lerpf(position.x,20,0.1)
	if is_hovered() and pressed_bool==false:
		scale.x=lerpf(scale.x,1.5,0.1)
		scale.y=lerpf(scale.y,1.5,0.1)
	else:
		scale.x=lerpf(scale.x,1,0.1)
		scale.y=lerpf(scale.y,1,0.1)
	if pressed_bool==true:
		scale.x=lerpf(scale.x,1.0,0.4)
		scale.y=lerpf(scale.y,1.0,0.4)
		if scale.x<=1.01:
			pressed_bool=false

func _on_pressed() -> void:
	if toggle == -1:
		$"../ColorRect2".on=true
		$AudioStreamPlayer.play()
	if $"../ColorRect2".on==true and $"../ColorRect".on==true:
		$"../ColorRect".on=false
		$"../Button2".toggle=-1
	if toggle==1:
		$"../ColorRect2".on=false
		$AudioStreamPlayer2.play()
	#if $"../ColorRect2".on==true and $"../ColorRect".on==true:
		#$"../ColorRect".on=false
	toggle*=-1
