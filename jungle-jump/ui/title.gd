extends Control
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_select") and !$Timer.time_left:
		$Timer.start()
		$enter_game.play("fade_out")
		$text_and_visibility.play("fade_out")
		$ConfirmSound.play()

		await $Timer.timeout
		GameState.first_level()
