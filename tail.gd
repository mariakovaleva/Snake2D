extends Area2D

var cur_dir = Vector2(0, 0)
var directions = []
var pos_array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	position += cur_dir/2
	if(directions.size() > 0):
		if(position == pos_array[0]):
			cur_dir = directions[0]
			remove_from_tail()

func remove_from_tail():
	directions.pop_front()
	pos_array.pop_front()
	
func add_to_tail(head_pos, dir):
	pos_array.append(head_pos)
	directions.append(dir)

func _on_area_entered(area):
	if(area.name == "Head"):
		get_tree().reload_current_scene()
