extends AnimatedSprite2D

signal collected # Signal to notify when the map is collected

func _ready():
	# Optionally set up animations or initial visibility
	pass

func _on_Map_body_entered(body):
	if body.name == "MainCharacter":
		emit_signal("collected")
		queue_free()  # Remove the map from the scene
