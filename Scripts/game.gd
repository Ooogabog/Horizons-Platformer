extends Node2D

@onready var score_label: Label = $"Score Label"

var level: int = 1
var score:int = 0
var current_level_root: Node = null

 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#setup level
	_setup_level()
	
# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(_delta: float) -> void:
	pass
#-----------------
#Level Management
#-----------------

	
func _setup_level() -> void:
	#---------------
	#signal receivers
	#---------------
	#Connect Exit
	var exit = $LevelRoot.get_node_or_null("Exit")
	if exit:
		exit.body_entered.connect(_on_exit_body_entered)
	   
	
	#connect food
	var foods = $LevelRoot.get_node_or_null("Food")
	if foods:
		for carrots in foods.get_children():
			carrots.collected.connect(add_point)
			
#----------------			
# signal Handlers
#-----------------
# score handler
func add_point():
	score += 1
	score_label.text = " You Collected "+ str(score)+ " carrots "
	
#exit Handler
func _on_exit_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level += 1
		body.can_move = false
		print(body)
		print(level)
	
