extends CharacterBody2D
const SPEED = 300

@onready var ball = $"/root/Pong/Ball"

func _physics_process(delta):
	var direction = Vector2(0, 0)
	
	var ballMiddle = ball.global_position.y 
	var paddleMiddle = global_position.y 
	direction.y = -1 if ballMiddle < paddleMiddle else 1

	velocity = direction * SPEED
	move_and_slide()
