extends CanvasLayer

@onready var font = preload("res://PublicPixel.ttf")
var leftScore : int = 0
var rightScore : int = 0
var score_label: Label

func _ready():
	score_label = Label.new()
	add_child(score_label)
	#score_label.rect_position = Vector2(10, 10)

	var dynamic_font = FontFile.new()
	dynamic_font.font_data = font

	# Set the font and size for the label
	#score_label.add_font_override("normal_font", dynamic_font)
	#score_label.font_size = 20 
#func _draw():
	#draw_string(font, Vector2(10, 10), scoreText)
	
func _physics_process(delta):	
	var scoreText = str(leftScore) + " : " + str(rightScore)
	score_label.text = scoreText
