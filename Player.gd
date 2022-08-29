extends KinematicBody2D

var speed = 100
var jumpForse = 300
var gravity = 700
var vel = Vector2()
onready var imagePlayer = get_node("player")
onready var animation = get_node("player")
func _physics_process(delta):
	
	if Input.is_action_pressed("go_left"):
		speed = 100
		animation.play("default")
		vel.x -=speed*delta
		
		
		
	elif Input.is_action_pressed("go_right"):
		speed = 100
		animation.play("default")
		vel.x +=speed*delta
			
	
		
	elif Input.is_action_just_released("go_right"):
		speed = 0
		vel.x =speed
		animation.play("New Anim")
		
		
	elif Input.is_action_just_released("go_left"):
		speed = 0
		vel.x =speed
		animation.play("New Anim")
	
	vel.y+= gravity*delta
	
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		
		vel.y -= jumpForse
		
		
			#vel.y += gravity
	
		
		
	
	
	vel = move_and_slide(vel, Vector2.UP)
		
	if vel.x > 0:
		imagePlayer.flip_h = true
	elif vel.x < 0:
		imagePlayer.flip_h = false
# Called when the node enters the scene tree for the first time.
		
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
