extends Area2D
var placeable = false
var placed = true
var count = 0
var attacking = false
var in_range = false
var AIR = []
var ABA
var attack = 1
var once = false
var cooldown: float = 1
var thrn_count = 0
var previous_h = 0
var once2 =false
var once3 = false
@onready var health = $"..".health
@onready var max_health = $"..".max_health
@onready var health_bar = $ProgressBar
@onready var timer = $"../Timer"
@onready var projectile_tscn = preload("res://projectile.tscn")

func _ready() -> void:
	attack = Global.ant_atk_type_enemy[1]*randf_range(0.75,1.25)
	previous_h=health
	$HitEffect.stop()
	$HitEffect.frame=0
	Global.ant2_found=true

func _physics_process(delta: float) -> void:
	if attacking==true and once2==false:
		$"../Timer2".start()
		once2=true
	if attacking==false:
		$"../Timer2".stop()
		once2=false
		once3=false
	if Global.start==false:
		$HitEffect.stop()
		$HitEffect.frame=0
	health = $"..".health
	max_health = $"..".max_health
	health_bar = $ProgressBar
	health_bar.value=health
	#print(cooldown)
	if previous_h!=health and $HitEffect.is_playing()==false:
		previous_h=health
		$HitEffect.play()
		if $AudioStreamPlayer2.playing==false and Global.start==true:
			$AudioStreamPlayer2.play()
	if attacking==true:
		$AnimatedSprite2D.play("attack")
		#if ABA != null:
			#ABA.get_node("HitEffect").show()
	else:
		$AnimatedSprite2D.play("default")
	
	if len(AIR)>0:
		ABA=AIR[0]
	if attacking==true and once==false and ABA != null:
		if ABA != null and once3==true:
			ABA.health-=attack
			if Global.thorn_on==true:
				thrn_count+=1
				if thrn_count>=5:
					$"..".health-=Global.thorn_cnt
					thrn_count=0
			once=true
			timer.start(1/cooldown)
	if is_instance_valid(ABA)==false and len(AIR)>0: 
		AIR.remove_at(0)
	if Global.start==true and in_range==true and ABA != null:
		attacking=true
	else:
		attacking=false

func _process(delta: float) -> void:
	if placed==false:
		self.position.x=get_global_mouse_position().x
		self.position.y=get_global_mouse_position().y
	if placeable==true and Input.is_action_just_pressed("click"):
		placed=true
		self.modulate=Color(0,0,0,1)


func _on_area_entered(area: Area2D) -> void:
	if placed==false:
		if area.is_in_group("non placable area"):
			count+=1
			placeable=false
			self.modulate=Color(0.7,0.131,0.255,0.54)


func _on_area_exited(area: Area2D) -> void:
	if placed==false:
		if area.is_in_group("non placable area"):
			count-=1
			if count==1:
				placeable=true
				self.modulate=Color(0.255, 0.131, 0.7, 0.54)


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("ally"):
		in_range=true
		AIR.append(body)


func _on_timer_timeout() -> void:
	once=false


func _on_timer_2_timeout() -> void:
	$"../Timer2".wait_time=0.5
	once2=false
	$AudioStreamPlayer3.play()
	var projectile = projectile_tscn.instantiate()
	add_sibling(projectile)
	projectile.enemy=ABA
	projectile.ally=self
	projectile.position.x=position.x
	projectile.position.y=position.y
