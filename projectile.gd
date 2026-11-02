extends Area2D
var enemy
var once = false
var ally

func _on_animated_sprite_2d_animation_finished() -> void:
	$AnimatedSprite2D.play("default")

func _process(delta: float) -> void:
	if enemy!=null and once==false:
		look_at(enemy.position)
		once=true
	position+=transform.x*500*delta


func _on_body_entered(body: Node2D) -> void:
	if body==enemy:
		queue_free()
		if ally!=null:
			ally.once3=true
