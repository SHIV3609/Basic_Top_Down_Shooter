extends Node2D

@onready var player = $Player
@onready var bullet_scene = preload("res://Scenes&Scripts/Player/bullet.tscn")
@onready var bullets = $Bullets

var bullet

func _physics_process(delta):
	
	if Input.is_action_just_pressed("Shoot"):
		shoot()

func shoot():
	bullet = bullet_scene.instantiate()
	bullet.direction = player.global_position.direction_to(get_global_mouse_position())
	bullets.add_child(bullet)
	bullet.global_position = player.bullet_spawner.global_position
