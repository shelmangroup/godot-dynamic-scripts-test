extends Node2D

var timer : Timer
onready var color = Color.from_hsv(0.0, 0.6, 1.0)

func _ready():
	$"../Label".text = "Bar"
	$"../Script".text = "Disco time!"
	timer = Timer.new()
	add_child(timer)
	timer.start(0.1)
	timer.connect("timeout", self, "disco")
	
func disco():
	color.h = color.h + 0.075
	$"../ColorRect".color = color
