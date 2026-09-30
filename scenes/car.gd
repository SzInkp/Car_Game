extends Area2D

var direction := Vector2.LEFT
var speed = 50
var colors = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png")
	]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true
	$Sprite2D.texture = colors.pick_random()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += speed * direction * delta
	if (position.x > 210) or (position.x < -210) :
		queue_free()
