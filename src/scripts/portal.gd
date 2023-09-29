extends Area2D

@onready var transition = $"../transition"
@export var next_level = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "frajola" and next_level != "":
		transition.change_scene(next_level)
	else:
		print("No scene loaded")
		
