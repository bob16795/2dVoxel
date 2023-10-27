extends Node2D

@export var width = 20;
@export var height = 20;
@export var scene = load("res://Scene/Block.tscn")

var array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(0, width):
		var sub_array = []
		for y in range(0, height):
			var block = {
				"id": 0,
			}
			
			if y > height - 7:
				block["id"] = 2
			
			if y > height - 6:
				block["id"] = 1
			
			sub_array += [block]
		array += [sub_array]
		
	spawn_blocks()

func spawn_blocks():
	var x = 0
	for row in array:
		var y = 0
		for block in row:
			var instance = scene.instantiate()
			add_child(instance)
			
			instance.set_pos(x, y)
			instance.set_id(array[x][y]["id"])
			y += 1
		x += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
