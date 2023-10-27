extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event.is_action_pressed("ui_left"):
		position.x -= 32
	if event.is_action_pressed("ui_right"):
		position.x += 32
	if event.is_action_pressed("ui_up"):
		position.y -= 32
	if event.is_action_pressed("ui_down"):
		position.y += 32
