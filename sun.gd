extends Area2D

signal Sun_used

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_area_entered(area):
	if(area.name == "Head"):
		queue_free()
		emit_signal("Sun_used")
