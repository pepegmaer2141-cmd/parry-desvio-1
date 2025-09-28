extends Node2D
var pelotitas = preload("res://pelotitas.tscn").instantiate()
@export var pelotitas_scene: PackedScene
var spawny
var numerobala = 0
var velomax = 500


func _ready():
	spawny = NodePath("spawner/spawn:position")
func _on_timer_timeout() -> void:
	numerobala=numerobala +1
	var enemy = pelotitas_scene.instantiate()
	enemy.position = position
	if numerobala < 15 : add_child(enemy)
