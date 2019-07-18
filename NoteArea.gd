extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print(points)
	print(monitoring)
	print("area collision layer is")
	collision_mask = 1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(ev):
	if Input.is_key_pressed(KEY_A):
		print(get_overlapping_bodies())
		for item in get_overlapping_bodies():
			item.queue_free()
			points += 1
			print(points)