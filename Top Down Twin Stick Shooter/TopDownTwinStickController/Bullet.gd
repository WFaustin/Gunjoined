extends KinematicBody

export(float) var PROJECTILE_SPEED = 1;
var direction 
var parent : String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var motion =  direction * PROJECTILE_SPEED
	#print("Bullet is moving towards (with Speed): ", motion)
	var collision = move_and_collide(motion)
	if (collision):
		if (collision.collider.name == "Turret" && parent != "Turret"):
			collision.collider.hit()
			collision.collider.queue_free()
			
		if ((collision.collider.name == "Player1" || collision.collider.name == "Player2") && parent == "Turret"):
			get_tree().reload_current_scene()
			#collision.collider.queue_free()
		print("Collided with Object")
		print(collision.collider.name)
		if (collision.collider.name != "Player1" || collision.collider.name != "Player2" || collision.collider.name != "Rod" || collision.collider.name != "Gun" || collision.collider.name != "Body"):
			queue_free()
		

func _on_Timer_timeout():
	queue_free()
