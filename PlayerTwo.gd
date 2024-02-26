extends CharacterBody2D
const SPEED = 300
const UP = "P2MoveUp"
const DOWN = "P2MoveDown"
var score = 0;

func _physics_process(delta):
	var direction = Vector2(0, 0)

	if Input.is_action_pressed(UP):
		direction.y -= 1
	if Input.is_action_pressed(DOWN):
		direction.y += 1	
	
	velocity = direction * SPEED
	move_and_slide()

func increaseScore():
	score = score + 1
