extends KinematicBody

export(NodePath) var P1NodePath  = "" #You must specify this in the inspector!
export(NodePath) var P2NodePath  = "" #You must specify this in the inspector!
export(NodePath) var HeadNodePath  = "" #You must specify this in the inspector!
export(float) var IgnoreTime = 2.0
export(float) var ShotFrequency = .5

const BULLET = preload("res://TopDownTwinStickController/Bullet.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var canSeeP1 = false
var canSeeP2 = false
var visionTime = 0.0
var P1 : KinematicBody
var P2 : KinematicBody
var target
var BulletPosition
var shotTime = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	P1 = get_node(P1NodePath)
	P2 = get_node(P2NodePath)
	BulletPosition = get_node(HeadNodePath)
	
func _process(delta):
	visionTime += delta
	shotTime += delta
	if (canSeeP1 && canSeeP2):
		#print("Both in Sight")
		var distanceToP1 = P1.global_transform.origin.distance_to(self.translation)
		var distanceToP2 = P2.global_transform.origin.distance_to(self.translation)
		if (distanceToP1 < distanceToP2):
			#print ("P1 is Closer")
			target = P1
		else:
			#print ("P2 is Closer")
			target = P2
	elif(canSeeP1 && !canSeeP2):
		#print("P1 in Sight")
		target = P1
	elif(!canSeeP1 && canSeeP2):
		#print("P2 in Sight")
		target = P2
	else:
		target = null
		visionTime = 0.0
		
	if (target != null):
		if (visionTime > IgnoreTime && shotTime > ShotFrequency):
			print("Time to shoot!")
			$Head.look_at(Vector3(target.global_transform.origin.x, 0, -target.global_transform.origin.z), Vector3.UP)
			#print("The head is looking at: ", $Head.global_transform.basis.get_euler())
			var bullet = BULLET.instance()
			get_parent().add_child(bullet)
			#print(bullet.global_transform.origin)
			bullet.set_translation(self.global_transform.origin)
			bullet.direction = -$Head.get_global_transform().basis.z
			bullet.parent = "Turret"
			shotTime = 0

func hit():
	print("Turret: I've been hit")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if (body.name == "Player1"):
		print("Hi P1")
		canSeeP1 = true
	elif (body.name == "Player2"):
		print("Hi P2")
		canSeeP2 = true
	#pass # Replace with function body.


func _on_Area_body_exited(body):
	if (body.name == "Player1"):
		print("Bye P1")
		canSeeP1 = false
	elif (body.name == "Player2"):
		print("Bye P2")
		canSeeP2 = false
	pass # Replace with function body.
