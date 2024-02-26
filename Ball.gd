extends CharacterBody2D

const SPEED = 300

#TODO use signals
@onready var playerOne = $"/root/Pong/PlayerOne"
@onready var playerTwo = $"/root/Pong/PlayerTwo"
@onready var AI = $"/root/Pong/AI"

var startingAngle = deg_to_rad(randi() %45 + -45)
var startingSide = -1 if randi() %1 == 0 else 1

var velocityX = cos(startingAngle) * startingSide * SPEED
var velocityY = sin(startingAngle) * SPEED

func _physics_process(delta):
	
	velocity = Vector2(velocityX, velocityY)
	
	var collision := move_and_collide(velocity * delta)
	if collision != null:
		var body = collision.get_collider()
		if body.is_in_group("paddle"):
			velocityX = velocity.x * -1 
			
		if body.is_in_group("upperAndLower"):
			velocityY = velocity.y * -1
			
		if body.is_in_group("left"):
			if AI != null:
				AI.increaseScore()
			else:
				playerTwo.increaseScore()
			
		if body.is_in_group("right"):
			playerOne.increaseScore()

