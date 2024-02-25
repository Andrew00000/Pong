extends CharacterBody2D

const SPEED = 300

var startingAngle = deg_to_rad(randi() %135 + 45)
var startingSide = -1 if randi() %1 == 0 else 1

var velocityX = cos(startingAngle) * startingSide * SPEED
var velocityY = sin(startingAngle) * SPEED

func _physics_process(delta):
	
	velocity = Vector2(velocityX, velocityY)
	move_and_slide()
	
func _on_area_2d_area_entered(area):
	if area.is_in_group("paddle"):
		velocityX = velocity.x * -1 
		
	if area.is_in_group("upperAndLower"):
		velocityY = velocity.y * -1
