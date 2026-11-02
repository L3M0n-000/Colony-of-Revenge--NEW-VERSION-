extends Sprite2D
var toggle = false
var OP:float =0.0
var NP:float =0.0
var D =-10
func _ready() -> void:
	OP=position.y
	NP=position.y+D
func _process(delta: float) -> void:
	if position.y==NP:
		toggle=false
	if position.y==OP:
		toggle=true
	if toggle==true:
		position.y=move_toward(position.y,NP,0.4)
	if toggle==false:
		position.y=move_toward(position.y,OP,0.4)
