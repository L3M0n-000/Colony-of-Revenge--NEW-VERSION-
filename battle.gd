extends Node2D
var once =false
var tutorial_count = 0
@onready var ant_ts = preload("res://ant_enemy.tscn")
@onready var ant2_ts = preload("res://ant2_enemy.tscn")
@onready var ant3_ts = preload("res://ant3_enemy.tscn")
@onready var ant4_ts = preload("res://ant4_enemy.tscn")
@onready var ant5_ts = preload("res://ant5_enemy.tscn")
@onready var ant6_ts = preload("res://ant6_enemy.tscn")
@onready var ant7_ts = preload("res://ant_enemy7.tscn")
@onready var ant_types=[ant_ts.instantiate(),ant2_ts.instantiate(),ant3_ts.instantiate(),ant4_ts.instantiate(),ant5_ts.instantiate(),ant6_ts.instantiate(),ant7_ts.instantiate()]
@onready var enemy1_real = false
@onready var enemy2_real = false
@onready var enemy3_real = false



func _ready() -> void:
	if Global.Act1_lvl_antnum[Global.Act1_level_type][0]!=-1:
		enemy1_real=true
	if Global.Act1_lvl_antnum[Global.Act1_level_type][1]!=-1:
		enemy2_real=true
	if Global.Act1_lvl_antnum[Global.Act1_level_type][2]!=-1:
		enemy3_real=true
	if enemy1_real==true:
		ant_ts = preload("res://ant_enemy.tscn")
		ant2_ts = preload("res://ant2_enemy.tscn")
		ant3_ts = preload("res://ant3_enemy.tscn")
		ant4_ts = preload("res://ant4_enemy.tscn")
		ant5_ts = preload("res://ant5_enemy.tscn")
		ant6_ts = preload("res://ant6_enemy.tscn")
		ant7_ts = preload("res://ant_enemy7.tscn")
		ant_types=[ant_ts.instantiate(),ant2_ts.instantiate(),ant3_ts.instantiate(),ant4_ts.instantiate(),ant5_ts.instantiate(),ant6_ts.instantiate(),ant7_ts.instantiate()]
		var ant_enemy = ant_types[Global.Act1_lvl_anttype[Global.Act1_level_type][0]]
		Global.enemy1_cache = ant_enemy
		add_child(ant_enemy)
		ant_enemy.position = Global.Act1_positions[Global.Act1_level_type][0]
		Global.enemy1_pos=ant_enemy.position
		ant_enemy.health = Global.Act1_lvl_antnum[Global.Act1_level_type][0]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][0]]*(Global.Act_progress/Global.difficulty_mod+1)
		ant_enemy.max_health = Global.Act1_lvl_antnum[Global.Act1_level_type][0]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][0]]*(Global.Act_progress/Global.difficulty_mod+1)
		ant_enemy.get_node("Area2D3/ProgressBar").max_value= Global.Act1_lvl_antnum[Global.Act1_level_type][0]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][0]]*(Global.Act_progress/Global.difficulty_mod+1)
		if ant_enemy.health<=0:
			Global.enemy1_pos=Vector2(-1000,-1000)
	else:
		var ant6_ts = preload("res://boss.tscn")
		if Global.act>=4:
			var boss=ant6_ts.instantiate()
			Global.enemy1_cache = boss
			add_child(boss)
			boss.position = Vector2(572,158)
			Global.enemy1_pos=boss.position
			boss.get_node("Area2D3/ProgressBar").max_value=Global.enemy1_cache.max_health
			if boss.health<=0:
				Global.enemy1_pos=Vector2(-1000,-1000)
	if enemy2_real==true:
		ant_ts = preload("res://ant_enemy.tscn")
		ant2_ts = preload("res://ant2_enemy.tscn")
		ant3_ts = preload("res://ant3_enemy.tscn")
		ant4_ts = preload("res://ant4_enemy.tscn")
		ant5_ts = preload("res://ant5_enemy.tscn")
		ant6_ts = preload("res://ant6_enemy.tscn")
		ant7_ts = preload("res://ant_enemy7.tscn")
		ant_types=[ant_ts.instantiate(),ant2_ts.instantiate(),ant3_ts.instantiate(),ant4_ts.instantiate(),ant5_ts.instantiate(),ant6_ts.instantiate(),ant7_ts.instantiate()]
		var ant_enemy2 = ant_types[Global.Act1_lvl_anttype[Global.Act1_level_type][1]]
		Global.enemy2_cache=ant_enemy2
		add_child(ant_enemy2)
		ant_enemy2.position = Global.Act1_positions[Global.Act1_level_type][1]
		Global.enemy2_pos=ant_enemy2.position
		ant_enemy2.health = Global.Act1_lvl_antnum[Global.Act1_level_type][1]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][1]]*(Global.Act_progress/Global.difficulty_mod+1)
		ant_enemy2.max_health = Global.Act1_lvl_antnum[Global.Act1_level_type][1]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][1]]*(Global.Act_progress/Global.difficulty_mod+1)
		ant_enemy2.get_node("Area2D3/ProgressBar").max_value= Global.Act1_lvl_antnum[Global.Act1_level_type][1]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][1]]*(Global.Act_progress/Global.difficulty_mod+1)
		if ant_enemy2.health<=0:
			Global.enemy1_pos=Vector2(-1000,-1000)
	if enemy3_real==true:
		ant_ts = preload("res://ant_enemy.tscn")
		ant2_ts = preload("res://ant2_enemy.tscn")
		ant3_ts = preload("res://ant3_enemy.tscn")
		ant4_ts = preload("res://ant4_enemy.tscn")
		ant5_ts = preload("res://ant5_enemy.tscn")
		ant6_ts = preload("res://ant6_enemy.tscn")
		ant7_ts = preload("res://ant_enemy7.tscn")
		ant_types=[ant_ts.instantiate(),ant2_ts.instantiate(),ant3_ts.instantiate(),ant4_ts.instantiate(),ant5_ts.instantiate(),ant6_ts.instantiate(),ant7_ts.instantiate()]
		var ant_enemy3 = ant_types[Global.Act1_lvl_anttype[Global.Act1_level_type][2]]
		Global.enemy3_cache=ant_enemy3
		add_child(ant_enemy3)
		ant_enemy3.position = Global.Act1_positions[Global.Act1_level_type][2]
		Global.enemy3_pos=ant_enemy3.position
		ant_enemy3.health = Global.Act1_lvl_antnum[Global.Act1_level_type][2]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][2]]*(Global.Act_progress/Global.difficulty_mod+1)
		ant_enemy3.max_health = Global.Act1_lvl_antnum[Global.Act1_level_type][2]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][2]]*(Global.Act_progress/Global.difficulty_mod+1)
		ant_enemy3.get_node("Area2D3/ProgressBar").max_value= Global.Act1_lvl_antnum[Global.Act1_level_type][2]*Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][2]]*(Global.Act_progress/Global.difficulty_mod+1)
		if ant_enemy3.health<=0:
			Global.enemy1_pos=Vector2(-1000,-1000)
func _process(delta: float) -> void:
	if Global.enemy1_cache != null and not(Global.ant_exist==false and Global.ant_exist2==false and Global.ant_exist3==false and Global.start==true):
		Global.enemy1_pos=Global.enemy1_cache.position
		if Global.act<4:
			if Global.Act1_lvl_antnum[Global.Act1_level_type][0]!=-1:
				Global.Act1_lvl_antnum[Global.Act1_level_type][0]=round(Global.enemy1_cache.health/Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][0]])
			Global.enemy1_cache.get_node("Area2D3/Label").text=str(Global.Act1_lvl_antnum[Global.Act1_level_type][0])
			Global.enemy1_cache.get_node("Area2D3").cooldown=Global.Act1_lvl_antnum[Global.Act1_level_type][0]
		else:
			Global.enemy1_cache.get_node("Area2D3/Label").text="1"
			Global.enemy1_cache.get_node("Area2D3").cooldown=1
			Global.enemy1_cache.get_node("Area2D3/ProgressBar").max_value=Global.enemy1_cache.max_health
			
	else:
		Global.enemy1_pos=Vector2(-1000,-1000)
	if Global.enemy2_cache != null and not(Global.ant_exist==false and Global.ant_exist2==false and Global.ant_exist3==false and Global.start==true):
		Global.enemy2_pos=Global.enemy2_cache.position
		if Global.Act1_lvl_antnum[Global.Act1_level_type][1]!=-1:
			Global.Act1_lvl_antnum[Global.Act1_level_type][1]=round(Global.enemy2_cache.health/Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][1]])
		Global.enemy2_cache.get_node("Area2D3/Label").text=str(Global.Act1_lvl_antnum[Global.Act1_level_type][1])
		#ant_enemy2.get_node("Area2D3").cooldown = float(1/Global.Act1_lvl_antnum[0][1])
		Global.enemy2_cache.get_node("Area2D3").cooldown=Global.Act1_lvl_antnum[Global.Act1_level_type][1]
		
	else:
		Global.enemy2_pos=Vector2(-1000,-1000)
	if Global.enemy3_cache != null and not(Global.ant_exist==false and Global.ant_exist2==false and Global.ant_exist3==false and Global.start==true):
		Global.enemy3_pos=Global.enemy3_cache.position
		if Global.Act1_lvl_antnum[Global.Act1_level_type][2]!=-1:
			Global.Act1_lvl_antnum[Global.Act1_level_type][2]=round(Global.enemy3_cache.health/Global.ant_type_health[Global.Act1_lvl_anttype[Global.Act1_level_type][2]])
		Global.enemy3_cache.get_node("Area2D3/Label").text=str(Global.Act1_lvl_antnum[Global.Act1_level_type][2])
		#ant_enemy3.get_node("Area2D3").cooldown = float(1/Global.Act1_lvl_antnum[0][2])
		Global.enemy3_cache.get_node("Area2D3").cooldown=Global.Act1_lvl_antnum[Global.Act1_level_type][2]
		
	else:
		Global.enemy3_pos=Vector2(-1000,-1000)
	if Global.enemy1_cache==null and Global.enemy2_cache==null and Global.enemy3_cache==null and Global.start==true:
		Global.start=false
		Global.Act_progress+=1
		Global.ant_exist=false
		Global.ant_exist2=false
		Global.ant_exist3=false
		if Global.taxed==true:
			Global.curreny+=Global.taxation
		$TextureRect.show()
		$AudioStreamPlayer3.play()
	if Global.ant_exist==false and Global.ant_exist2==false and Global.ant_exist3==false and Global.start==true:
		$"CanvasLayer/ColorRect".scene="res://map.tscn"
		$"CanvasLayer/ColorRect".on=true
		Global.start=false
	if Global.start==true and once==false:
		$Timer.start()
		once=true


func _on_timer_timeout() -> void:
	if Global.enemy1_cache!=null and Global.enemy1_cache.is_in_group("clone"):
		Global.enemy1_cache.health *=2
		Global.enemy1_cache.max_health *=2
		Global.enemy1_cache.get_node("Area2D3/ProgressBar").max_value*=2
	if Global.enemy2_cache!=null and Global.enemy2_cache.is_in_group("clone"):
		Global.enemy2cache.health *=2
		Global.enemy2_cache.max_health *=2
		Global.enemy2_cache.get_node("Area2D3/ProgressBar").max_value*=2
	if Global.enemy3_cache!=null and Global.enemy3_cache.is_in_group("clone"):
		Global.enemy3_cache.health *=2
		Global.enemy3_cache.max_health *=2
		Global.enemy3_cache.get_node("Area2D3/ProgressBar").max_value*=2
