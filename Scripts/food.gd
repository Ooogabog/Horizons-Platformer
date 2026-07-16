extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

signal collected

func _on_body_entered(_body: Node2D) -> void:
	emit_signal("collected")
	queue_free()
