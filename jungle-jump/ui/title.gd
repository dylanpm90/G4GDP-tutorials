extends Control
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_select"):
		$enter_game.play("fade_out")
		$text_and_visibility.play("fade_out")
		$ConfirmSound.play()
		$Timer.start()
		await $Timer.timeout
		GameState.next_level()
