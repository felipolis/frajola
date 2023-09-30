extends Control

@onready var levels := $levels
@onready var background_terrain = $"background/01/texture"
@onready var transition = $transition

var current_level

# Called when the node enters the scene tree for the first time.
func _ready():
	current_level = Global.get_last_level()
	
	if levels != null:
		# Obtenha o número de filhos do nó "level"
		var num_children = levels.get_child_count()
		
		
		
		# Itere sobre todos os filhos do nó "level"
		for i in num_children:
			var child = levels.get_child(i)
			child.disabled = not Global.levels[i]
			if i == current_level - 1:
				child.modulate = "ffff00"
	
	if background_terrain != null:
		if current_level <= 5:
			background_terrain.texture = ResourceLoader.load("res://src/assets/tilesets/1 - Grassland/background/1 - Foreground_scenery.png")
		else:
			background_terrain.texture = ResourceLoader.load("res://src/assets/tilesets/2 - Mushroom World/background/1 - Foreground_scenery.png")
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	transition.visible = true
	transition.change_scene("res://src/interfaces/main_menu.tscn")

func _on_level_01_pressed():
	if current_level == 1:
		transition.visible = true
		transition.change_scene("res://src/levels/level_01.tscn")


func _on_level_02_pressed():
	pass # Replace with function body.


func _on_level_03_pressed():
	pass # Replace with function body.


func _on_level_04_pressed():
	pass # Replace with function body.


func _on_level_05_pressed():
	pass # Replace with function body.


func _on_level_06_pressed():
	pass # Replace with function body.


func _on_level_07_pressed():
	pass # Replace with function body.


func _on_level_08_pressed():
	pass # Replace with function body.


func _on_level_09_pressed():
	pass # Replace with function body.


func _on_level_10_pressed():
	pass # Replace with function body.
