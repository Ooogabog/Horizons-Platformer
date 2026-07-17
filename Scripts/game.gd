extends Node2D

@onready var score_label: Label = $"Score Label"

var level: int = 1
var score:int = 0
 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_setup_level()
	
# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(_delta: float) -> void:
	pass
	
func _setup_level() -> void:
	   
	
	#connect food
	var foods = $LevelRoot.get_node_or_null("Food")
	if foods:
		for carrots in foods.get_children():
			carrots.collected.connect(add_point)
			
			
# signal Handlers
#-----------------
# score handler
func add_point():
	score += 1
	print(score)
	score_label.text = " You Collected "+ str(score)+ " carrots "
	
	
