extends CharacterBody2D

const MAX_SPEED = 75

func _ready() -> void:
	pass # Replace with functionbody.


func _process(delta: float) -> void:
	var direccion = direction_to_player()
	velocity = direccion * MAX_SPEED
	move_and_slide()


func direction_to_player():
	var player_node = get_tree().get_first_node_in_group('player') as Node2D
	if player_node != null:
		return (player_node.global_position - global_position).normalized()
	return Vector2.ZERO
