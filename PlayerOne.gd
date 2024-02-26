extends CharacterBody2D
const SPEED = 300
const UP = "P1MoveUp"
const DOWN = "P1MoveDown"
var score = 0 
setget set_score

func set_score(value):
	score = value
	update()

func _draw():
	draw_string( FONT, Vector2(), "myvariable = %s" % str(myvariable) )
	
func _physics_process(delta):
	var direction = Vector2(0, 0)

	if Input.is_action_pressed(UP):
		direction.y -= 1
	if Input.is_action_pressed(DOWN):
		direction.y += 1	
	
	velocity = direction * SPEED
	move_and_slide()
	
func increaseScore():
	set_score(score + 1)

