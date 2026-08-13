extends CharacterBody2D

@export var speed = 200.0
@export var gravity = 900
@export var jump_force = -400

func _physics_process(delta):
	var dir = Input.get_axis("move_left", "move_right")
	velocity.x = dir * speed
	move_and_slide()
	
	velocity.y += gravity * delta
	if  Input.is_action_just_pressed("jump"):
		velocity.y = jump_force

# TODO: falta la función de salto
