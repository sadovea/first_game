extends KinematicBody2D

var speed = 10
var jumpForse = 300
var gravity = 700

var f = Vector2(0, -1)
var dir = 1

onready var enemyImage = get_node("e")

var vel = Vector2()

func _physics_process(delta):
	vel.x = speed*dir
	enemyImage.play("default")
	vel.y+= gravity*delta
	
	if is_on_wall():
		change_dir()
		$RayCast2D.position.x*=-1
		
	if $RayCast2D.is_colliding() == false:
		change_dir()
		$RayCast2D.position.x*=-1
	
	vel = move_and_slide(vel, f)
   
func change_dir():
	dir*= -1
	vel.x = speed*dir
	$e.flip_h = !$e.flip_h

"""
func _on_top_checker_body_entered(body):
	enemyImage.play("New Anim")
	speed = 0
"""
		
