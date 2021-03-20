extends Node2D

export var color : Color
export var script_url : String

func _ready():
	$ColorRect.color = color
	$Label.text = name


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
