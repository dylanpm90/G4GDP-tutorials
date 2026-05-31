extends Node

signal score_changed

var item_scene = load("res://items/item.tscn")
var door_scene = load("res://items/door.tscn")
var score = 0: set = set_score


func set_score(value):
	score = value
	score_changed.emit(value)


func _ready() -> void:
	$Items.hide()
	$Player.reset($SpawnPoint.position)
	$fade.play("fade_in")
	set_camera_limits()
	spawn_items()
	create_ladders()


func create_ladders():
	var cells = $World.get_used_cells(0)
	for cell in cells:
		var data = $World.get_cell_tile_data(0, cell)
		if data.get_custom_data("special") == "ladder":
			var c = CollisionShape2D.new()
			$Ladders.add_child(c)
			c.position = $World.map_to_local(cell)
			var s = RectangleShape2D.new()
			s.size = Vector2(8, 16)
			c.shape = s


func spawn_items():
	var item_cells = $Items.get_used_cells(0)
	for cell in item_cells:
		var data = $Items.get_cell_tile_data(0, cell)
		var type = data.get_custom_data("type")
		if type == "door":
			var door = door_scene.instantiate()
			add_child(door)
			door.position = $Items.map_to_local(cell)
			door.body_entered.connect(_on_door_entered)
		else:
			var item = item_scene.instantiate()
			add_child(item)
			item.init(type, $Items.map_to_local(cell))
			if type == "cherry":
				item.picked_up.connect(self._on_cherry_picked_up)
			elif type == "gem":
				item.picked_up.connect(self._on_gem_picked_up)


func _on_cherry_picked_up():
	$PickUpSound.pitch_scale = 1.0
	$PickUpSound.play()
	score += 1

func _on_gem_picked_up():
	$PickUpSound.pitch_scale = 2.0
	$PickUpSound.play()
	score += 5


func set_camera_limits():
	var map_size = $World.get_used_rect()
	var cell_size = $World.tile_set.tile_size
	$Player/Camera2D.limit_left = (map_size.position.x) * cell_size.x
	$Player/Camera2D.limit_right = (map_size.end.x) * cell_size.x


func _on_player_died() -> void:
	$fade.play("fade_out")
	GameState.restart()


@warning_ignore("unused_parameter")
func _on_door_entered(body):
	$fade.play("fade_out")
	GameState.next_level()


func _on_ladders_body_entered(body: Node2D) -> void:
	body.is_on_ladder = true


func _on_ladders_body_exited(body: Node2D) -> void:
	body.is_on_ladder = false
