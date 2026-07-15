extends Area2D
@onready var collected_sound : AudioStreamPlayer2D = $CollectedSound


func _on_body_entered(body: Node2D) -> void:
	print("+1 food")
	collected_sound.play()
	queue_free()
	
