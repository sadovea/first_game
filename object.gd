extends KinematicBody2D
"""
var speed = 100


var object = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("go_left"):
		speed = 10
		object.x -=speed
	elif Input.is_action_pressed("go_right"):
		speed = 10
		object.x +=speed
		
	
		
	elif Input.is_action_just_released("go_right"):
		speed = 0
		object.x =speed
		
	elif Input.is_action_just_released("go_left"):
		speed = 0
		object.x =speed	
	
	
	
		
		
	
	
	object = move_and_slide(object, Vector2.UP)
"""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
