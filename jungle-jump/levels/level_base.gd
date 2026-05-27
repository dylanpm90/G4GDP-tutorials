extends Node
func _ready() -> void:
	$Items.hide()
	$Player.reset($SpawnPoint.position)
