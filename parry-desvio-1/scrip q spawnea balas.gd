extends Node2D

var pelotitas = preload("res://pelotitas.tscn").instantiate()
@export var pelotitas_scene: PackedScene
var spawn

func _ready():
	spawn = NodePath("juego/spawner/spawn:position")

func _on_timer_timeout() -> void:
	var enemy = pelotitas_scene.instantiate()
	enemy.position = spawn
	get_parent().add_child(enemy)
