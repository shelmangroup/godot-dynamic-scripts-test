extends Node2D

func _ready():
	$"../Label".text = "Foo"
	$"../Script".text = "I feel jumpy!"
	var actor : Node2D = get_parent()
	actor.bounce = 0.8
	actor.apply_impulse(Vector2(), Vector2(50, -200))
