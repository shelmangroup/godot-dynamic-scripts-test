extends Node2D

onready var actor : Node2D = get_parent()

func _ready():
	$"../Label".text = "Foo"
	$"../Script".text = "I feel jumpy!"
	actor.bounce = 0.8
	actor.apply_impulse(Vector2(), Vector2(50, -200))

func process(delta):
	#print("foo!")
	pass
