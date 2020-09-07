extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$BulletCollsion.connect("body_entered", self, "hit")
	pass # Replace with function body.
	
func hit(object):
	print(object.name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
