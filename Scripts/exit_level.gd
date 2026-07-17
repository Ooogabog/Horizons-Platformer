extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("collided with player")
		var current_scene_file = owner.scene_file_path
		var next_level_number = current_scene_file.to_int() +1 
		var next_level_path = "res://Scenes/Levels/level" + str(next_level_number) + ".tscn"
		print(current_scene_file)
		print(next_level_number)
		
		get_tree().call_deferred("change_scene_to_file",next_level_path)
		
