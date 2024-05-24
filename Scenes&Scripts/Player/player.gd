extends CharacterBody2D

@export var speed: int = 200

var direction = Vector2.ZERO

func _physics_process(_delta):
	
	direction = Input.get_vector("Left", "Right", "Up", "Down")
	direction = direction.normalized()
	
	velocity = direction * speed
	move_and_slide()
