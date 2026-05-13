extends CharacterBody2D

signal life_changed
signal died

var life = 3: set = set_life
func set_life(value):
	life = value
	life_changed.emit(life)
	if life <= 0:
		change_state(DEAD)


@export var gravity = 750
@export var run_speed = 150
@export var jump_speed = -300

enum { IDLE, RUN, JUMP, HURT, DEAD }

var state = IDLE


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
		JUMP:
			$AnimationPlayer.play("jump_up")
		DEAD:
			died.emit()
			hide()


func get_input():
	if state == HURT:
		return
	
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
	# jumping only allowed on the ground
	if jump and is_on_floor():
		change_state(JUMP)
		velocity.y = jump_speed
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


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	get_input()
	move_and_slide()
	# in the tutorial the following code is place in this function
	# rather than the get_input() funciton.
	if state == JUMP and is_on_floor():
		change_state(IDLE)
	if state == JUMP and velocity.y > 0:
		$AnimationPlayer.play("jump_down")


func reset(_position):
	position = _position
	life = 3
	show()
	change_state(IDLE)


func hurt():
	if state != HURT:
		change_state(HURT)
