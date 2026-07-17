extends Node2D




func _on_end_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		var main_menu_path = "res://Scenes/Levels/level0.tscn"
		get_tree().call_deferred("change_scene_to_file",main_menu_path)
