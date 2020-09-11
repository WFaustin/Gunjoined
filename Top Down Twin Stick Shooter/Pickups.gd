extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

enum PickupItems{SPEED_M, SHOOT_M, HEALTH_M, SPEED_C, SHOOT_C, HEALTH_C}

var modifierSpeedVal = 0; 
var modifierShootVal = 0; 
var modifierHealthVal = 0; 
var consumableSpeedVal = 0; 
var consumableShootVal = 0; 
var consumableHealthVal = 0; 
var pickupItemID = -1; 
var pickupItemName
onready var meshPickup : CSGMesh = get_node("CSGMesh") 
var player1; 
var player2; 



# Called when the node enters the scene tree for the first time.
func _ready():
	randomize(); 
	identifyItem(); 
	get_node("Timer").start()
	pass # Replace with function body.

func setModifiers():
	match pickupItemID:
		0:
			modifierSpeedVal = 8; 
		1:
			modifierShootVal = .02; 
		2:
			modifierHealthVal = 50; 
		3:
			consumableSpeedVal = 25; 
		4:
			consumableShootVal = .05; 
		5:
			consumableHealthVal = 200;
	


func identifyItem():
	if pickupItemID == -1:
		var rand = int(floor(rand_range(0, PickupItems.size()))); 
		pickupItemName = PickupItems.keys()[rand]; 
		pickupItemID = rand; 
		print(pickupItemID)
		print(pickupItemName); 
	else:
		pickupItemName = PickupItems.keys()[pickupItemID]; 
		print(pickupItemID)
		print(pickupItemName);
	setModifiers()

func applyPowerup():
	print("At Apply Powerup")
	match pickupItemID:
		0:
			player1.setMovementSpeed(player1.MovementSpeed + modifierSpeedVal); 
			print("New Movement Speed is", player1.MovementSpeed)
			player2.setMovementSpeed(player2.MovementSpeed + modifierSpeedVal); 
			print("New Movement Speed is", player2.MovementSpeed)
		1:
			player1.setGunShotFrequency(player1.gunShotFrequency - modifierShootVal)
			print("New Gun Shot Speed is", player1.gunShotFrequency)
			player2.setGunShotFrequency(player2.gunShotFrequency - modifierShootVal)
			print("New Gun Shot Speed is", player2.gunShotFrequency)
		2:
			#When health gets added, that goes here
			print("Add health")
		3:
			player1.setMovementSpeed(player1.MovementSpeed + consumableSpeedVal); 
			print("New Movement Speed is", player1.MovementSpeed)
			player2.setMovementSpeed(player2.MovementSpeed + consumableSpeedVal); 
			print("New Movement Speed is", player2.MovementSpeed)
		4:
			player1.setGunShotFrequency(player1.gunShotFrequency - consumableShootVal)
			print("New Gun Shot Speed is", player1.gunShotFrequency)
			player2.setMovementSpeed(player2.MovementSpeed + consumableSpeedVal); 
			print("New Movement Speed is", player2.MovementSpeed)
		5:
			#When health gets added, that goes here
			print("Add health")


func resetConsumables():
	print("At Reset")
	match pickupItemID:
		3:
			player1.setMovementSpeed(player1.MovementSpeed - consumableSpeedVal); 
			player2.setMovementSpeed(player2.MovementSpeed - consumableSpeedVal); 
		4:
			player1.setGunShotFrequency(player1.gunShotFrequency + consumableShootVal)
			player2.setGunShotFrequency(player2.gunShotFrequency + consumableShootVal)

func randomlyChangePowerUp():
	var r = rand_range(0, 1)
	var g = rand_range(0, 1)
	var b = rand_range(0, 1)
	var material = meshPickup.get_material()
	material.albedo_color = Color(r,g,b)
	get_node("Timer").start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_RigidBody_body_entered(node):
	var s = false;
	print(node.name)
	if node.name == "Player1" || node.name == "Player2":
		if node.name == "Player1":
			player1 = node.get_node("Controller")
			player2 = player1.get_parent().get_parent().get_node("Player2").get_node("Controller")
		elif node.name == "Player2":
			player2 = node.get_node("Controller")
			player1 = player1.get_parent().get_parent().get_node("Player1").get_node("Controller")
		applyPowerup()
		get_node("CollisionTimer").start()
	pass; 


func _on_Timer_timeout():
	get_node("Timer").stop()
	randomlyChangePowerUp()

func _on_CollisionTimer_timeout():
	get_node("CollisionTimer").stop()
	resetConsumables()
	get_parent().queue_free(); 




