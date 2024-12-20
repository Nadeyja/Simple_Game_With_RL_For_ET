extends Node2D


# Called when the node enters the scene tree for the first time.

var plat = preload("res://objects/platforms.tscn");
var Platforms = plat.instantiate();
func _ready():
	Platforms = plat.instantiate();
	add_child(Platforms);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func reset_platforms():
	Platforms.queue_free();
	Platforms = plat.instantiate();
	add_child(Platforms);
	
