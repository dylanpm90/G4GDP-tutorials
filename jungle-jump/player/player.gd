extends CharacterBody2D

signal life_changed
signal died


@export var gravity = 750
@export var run_speed = 150
@export var jump_speed = -300
@export var max_jumps = 2
@export var double_jump_factor = 1.5
@export var jump_count = 0
@export var climb_speed = 50
var is_on_ladder = false
var state = IDLE
var life = 3: 
	set = set_life


func set_life(value):
	life = value
	life_changed.emit(life)




enum { IDLE, RUN, JUMP, HURT, DEAD, CLIMB }


func _ready() -> void:
	change_state(IDLE)


func change_state(new_state):
	state = new_state
	match state:
		IDLE:
			$AnimationPlayer.play("idle")
		RUN:
			$AnimationPlayer.play("run")
		HURT:
			$AnimationPlayer.play("hurt")
			velocity.y = -200
			velocity.x = -100 * sign(velocity.x)
			life -= 1
			await get_tree().create_timer(0.5).timeout
			change_state(IDLE)
			if life <= 0:
				change_state(DEAD)
		JUMP:
			$AnimationPlayer.play("jump_up")
			jump_count = 1
		DEAD:
			died.emit()
			hide()
		CLIMB:
			$AnimationPlayer.play("climb")


func get_input():
	if state == HURT:
		return
	
	var up = Input.is_action_pressed("climb")
	var down = Input.is_action_pressed("crouch")
	var right = Input.is_action_pressed("right")
	var left = Input.is_action_pressed("left")
	var jump = Input.is_action_just_pressed("jump")
	# movement occurs in all states
	velocity.x = 0
	if right:
		velocity.x += run_speed
		$Sprite2D.flip_h = false
	if left:
		velocity.x -= run_speed
		$Sprite2D.flip_h = true
	#double jump
	if jump and state == JUMP and jump_count < max_jumps and jump_count > 0:
		$JumpSound.play()
		$AnimationPlayer.play("jump_up")
		$Dust.emitting = true
		velocity.y = jump_speed / double_jump_factor
		jump_count += 1
	# jumping only allowed on the ground
	if jump and is_on_floor():
		change_state(JUMP)
		velocity.y = jump_speed
		$Dust.emitting = true
		$JumpSound.play()
	# IDLE transitions to RUN when moving
	if state == IDLE and velocity.x != 0:
		change_state(RUN)
	# RUN to IDLE when no longer moving
	if state == RUN and velocity.x == 0:
		change_state(IDLE)
	# transition to JUMP when not on the floor
	if state in [IDLE, RUN] and !is_on_floor():
		change_state(JUMP)
	# jump if statements are in the physics process in the tutorial
	# I don't see a difference as to why they are placed outside
	# of get input, but I'll follow the tutorial.
	if up and state != CLIMB and is_on_ladder:
		change_state(CLIMB)
	if state == CLIMB:
		if up:
			velocity.y = -climb_speed
			$AnimationPlayer.play("climb")
		elif down:
			velocity.y = climb_speed
			$AnimationPlayer.play("climb")
		else:
			velocity.y = 0
			$AnimationPlayer.stop()
		if state == CLIMB and not is_on_ladder:
			change_state(IDLE)


func _physics_process(delta: float) -> void:
	if state != CLIMB:
		velocity.y += gravity * delta
	get_input()
	move_and_slide()
	if state == HURT:
		return
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider().is_in_group("danger"):
			hurt()
		if collision.get_collider().is_in_group("enemies"):
			if position.y < collision.get_collider().position.y:
				collision.get_collider().take_damage()
				velocity.y = -200
			else:
				hurt()
	# in the tutorial the following code is place in this function
	# rather than the get_input() funciton.
	if state == JUMP and is_on_floor():
		change_state(IDLE)
		jump_count = 0
		$Dust.emitting = true
	if state == JUMP and velocity.y > 0:
		$AnimationPlayer.play("jump_down")


func reset(_position):
	position = _position
	life = 3
	show()
	change_state(IDLE)


func hurt():
	if state != HURT:
		$HurtSound.play()
		change_state(HURT)
