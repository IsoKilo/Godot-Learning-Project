extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	translate(Vector2(-0.8, 0))
	if(self.position.x < -14):
		var y_pos = randf_range(90, 168)
		set_position(Vector2(160, y_pos))
