extends Node2D

@onready var frajola := $frajola as CharacterBody2D
@onready var camera := $camera as Camera2D
@onready var control = $HUD/control


# Called when the node enters the scene tree for the first time.
func _ready():
	frajola.follow_camera(camera)
	get_tree().call_group("boss", "set_frajola", frajola)
	frajola.frajola_has_died.connect(reload_game)
	control.time_is_up.connect(reload_game)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func reload_game():
	await get_tree().create_timer(1.0).timeout
	Global._reset_game()
	Global.goto_scene("res://src/levels/level_01.tscn")
	
