extends Node2D

@onready 
var sun = preload("res://sun.tscn")
var rng = RandomNumberGenerator.new()

var score = 0

func _process(_delta):
	$Score.text = "Score: " + str(score)

# Called when the node enters the scene tree for the first time.
func _ready():
	add_sun()

func add_sun():
	var instance = sun.instantiate()
	instance.position = Vector2(rng.randi_range(900, 100), rng.randi_range(500, 50))
	instance.Sun_used.connect(spawn_new)
	add_child(instance)

func spawn_new():
	score += 1
	add_sun()
	get_node("Snake").add_tail()
