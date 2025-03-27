extends CharacterBody3D

@export var normal_speed: float = 8.0
@export var sprint_speed: float = 15.0
@export var crouch_speed: float = 2.0
@export var acceleration: float = 3.0
@export var gravity: float = 9.8
@export var jump_power: float = 5.0
@export var mouse_sensitivity: float = 0.3

@onready var head: Node3D = $Head

var is_crouching: bool = false
var current_speed: float

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	current_speed = normal_speed  # Mulai dengan normal speed

func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	# Toggle Crouch dengan tombol "M"
	if Input.is_action_just_pressed("crouch"):
		is_crouching = !is_crouching

func _physics_process(delta):
	var movement_vector = Vector3.ZERO

	# Current speed berdasarkan sprint, crouch, atau normal
	if Input.is_action_pressed("sprint") and not is_crouching:
		current_speed = sprint_speed  # Sprint
	elif is_crouching:
		current_speed = crouch_speed  # Crouch
	else:
		current_speed = normal_speed  # Normal

	if Input.is_action_pressed("movement_forward"):
		movement_vector -= head.basis.z
	if Input.is_action_pressed("movement_backward"):
		movement_vector += head.basis.z
	if Input.is_action_pressed("movement_left"):
		movement_vector -= head.basis.x
	if Input.is_action_pressed("movement_right"):
		movement_vector += head.basis.x

	movement_vector = movement_vector.normalized()

	velocity.x = lerp(velocity.x, movement_vector.x * current_speed, acceleration * delta)
	velocity.z = lerp(velocity.z, movement_vector.z * current_speed, acceleration * delta)

	# Apply gravity
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Jumping
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_power

	move_and_slide()
