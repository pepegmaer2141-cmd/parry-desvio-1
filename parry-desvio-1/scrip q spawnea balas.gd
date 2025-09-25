extends Node2D

var pelotitas = preload("res://pelotitas.tscn").instantiate()
@export var pelotitas_scene: PackedScene
var spawny

func _ready():
	spawny = NodePath("spawner/spawn:position")

func _on_timer_timeout() -> void:
	var enemy = pelotitas_scene.instantiate()
	enemy.position = position
	add_child(enemy)
