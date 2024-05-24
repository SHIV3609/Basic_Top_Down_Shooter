extends CharacterBody2D

@export var speed: int = 800

var direction: Vector2 = Vector2()
var bullet

func _ready():
	look_at(to_global(direction))

func _physics_process(_delta):
	velocity = direction * speed
	move_and_slide()


func _on_timer_timeout():
	queue_free()
