extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var note_resource = preload("Note.tscn")
var note

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(ev):
	if Input.is_key_pressed(KEY_K):
		note = note_resource.instance()
		note.set_translation(Vector3(0,5,0))
		add_child(note)
		print(note.translation)
