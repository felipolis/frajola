extends Node2D

@onready var frajola := $frajola as CharacterBody2D
@onready var camera := $camera as Camera2D
@onready var balls_counter = $HUD/control/container/infos_container/balls_container/balls_counter
@onready var life_counter = $HUD/control/container/infos_container/life_container/life_counter
@onready var timer_counter = $HUD/control/container/timer_container/timer_counter
@onready var score_counter = $HUD/control/container/score_container/score_counter


# Called when the node enters the scene tree for the first time.
func _ready():
	frajola.follow_camera(camera)
	get_tree().call_group("boss", "set_frajola", frajola)
	
	balls_counter.text = str("%04d" % Global.player_bullets)
	score_counter.text = str("%06d" % Global.player_score)
	life_counter.text = str("%02d" % Global.player_life)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	balls_counter.text = str("%04d" % Global.player_bullets)
	score_counter.text = str("%06d" % Global.player_score)
	life_counter.text = str("%02d" % Global.player_life)
