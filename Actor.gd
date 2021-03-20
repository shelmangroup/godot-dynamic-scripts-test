extends Node2D

export var color : Color
export var script_url : String
var behavior = null

var foo = """
extends Node2D

func _ready():
	$"../Label".text = "Foo"
"""

func _ready():
	$ColorRect.color = color
	$Label.text = "..."
	$Script.text = script_url

	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed", self, "_http_request_completed")

	var error = http_request.request(script_url)
	if error != OK:
		push_error("An error occurred in the HTTP request.")

func _http_request_completed(result, response_code, headers, body):
	load_script(body.get_string_from_utf8())


func load_script(source_code):
	$Behavior.script.source_code = source_code
	$Behavior.script.reload(true)
	$Behavior._ready()
