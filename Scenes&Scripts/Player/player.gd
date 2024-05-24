extends CharacterBody2D

@export var speed: int = 200
@onready var bullet_spawner = $BulletSpawner

var direction = Vector2.ZERO

func _physics_process(_delta):
	
	look_at(get_global_mouse_position())
	
	direction = Input.get_vector("Left", "Right", "Up", "Down")
	direction = direction.normalized()
	
	velocity = direction * speed
	move_and_slide()
