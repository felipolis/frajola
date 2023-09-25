extends Control

@onready var levels := $levels
@onready var background_terrain = $"background/01/texture"

# Called when the node enters the scene tree for the first time.
func _ready():
	if levels != null:
		# Obtenha o número de filhos do nó "level"
		var num_children = levels.get_child_count()
		
		# Itere sobre todos os filhos do nó "level"
		for i in num_children:
			var child = levels.get_child(i)
			#print("Child name:", child.name)
			child.disabled = not Global.levels[i]
	
	if background_terrain != null:
		var current_level = Global.get_last_level()
		if current_level <= 5:
			background_terrain.texture = ResourceLoader.load("res://src/assets/tilesets/1 - Grassland/background/1 - Foreground_scenery.png")
		else:
			background_terrain.texture = ResourceLoader.load("res://src/assets/tilesets/2 - Mushroom World/background/1 - Foreground_scenery.png")
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	Global.goto_scene("res://src/interfaces/main_menu.tscn")
