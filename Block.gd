extends Node2D

@export var block_textures: Array[Texture2D];

func set_pos(x, y):
	position = Vector2(x * 32 as float, y * 32 as float)

func set_id(id):
	if (id == 0):
		queue_free()
	$StaticBody2D/Sprite2D.texture = block_textures[id - 1]
