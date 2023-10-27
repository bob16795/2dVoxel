extends Node2D

var vel: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _update(delta):
	pass

# process input events
func _input(event):
	if event.is_action("Player Left"):
		$RigidBody2D.linear_velocity.x = -32 * 10

	if event.is_action("Player Right"):
		$RigidBody2D.linear_velocity.x = 32 * 10
