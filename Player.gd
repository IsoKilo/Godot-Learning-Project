extends Node2D

var velocity = 0
var dead = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if !dead:
		if Input.is_action_just_pressed("ui_select"):
			velocity = -2.5
	if(velocity < 8):
		velocity += 0.1
	translate(Vector2(0, velocity))

func body_entered(_area):
	dead = true
