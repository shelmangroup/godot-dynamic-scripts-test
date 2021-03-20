extends Node2D

export var color : Color
export var script_url : String
var behavior = null

func _ready():
	$ColorRect.color = color
	$Label.text = name
	$Script.text = script_url
	load_script()

func load_script():
	var Behavior = load(script_url)
	behavior = Behavior.new()
	add_child(behavior)
	assert(behavior.get_script() == Behavior)

func _process(delta):
	behavior.process(delta)
