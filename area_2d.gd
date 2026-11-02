extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("ally"):
		if body!=null:
			body.health-=100*(Global.Act_progress/Global.difficulty_mod+1)


func _process(delta: float) -> void:
	if $AnimatedSprite2D.frame==5:
		$CollisionShape2D.disabled=true

func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free()
