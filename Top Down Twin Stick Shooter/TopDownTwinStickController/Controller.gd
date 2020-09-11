extends Spatial

const BULLET = preload("res://TopDownTwinStickController/Bullet.tscn")

export(NodePath) var PlayerPath  = "" #You must specify this in the inspector!
export(NodePath) var NonPlayerPath  = "" #You must specify this in the inspector!
var hardcodedPlayerPath; 
var hardcodedNonPlayerPath
export(NodePath) var RodPivotPath  = "" #You must specify this in the inspector!
export(NodePath) var CameraPath  = ""
export(NodePath) var MeshInstancePath  = ""
export(float) var MovementSpeed = 15
export(float) var Acceleration = 3
export(float) var Deacceleration = 5
export(float) var MaxJump = 19
export(float) var RotationSpeed = 3
export(float) var MaxZoom = 0.5
export(float) var MinZoom = 1.5
export(float) var ZoomSpeed = 2
export(int) var playerNum = 1
export(float) var gunShotFrequency = .1
export(bool) var usingKeyboard = false;

var Player : KinematicBody
var NonPlayer : KinematicBody
var RodPivot : HingeJoint
var Camera : Camera
var MeshInstance
var BulletPosition
var RayCast
var InnerGimbal
var Direction = Vector3()
var LastDirection = Vector3()
var CameraRotation
var gravity = -10
var Accelerate = Acceleration
var Movement = Vector3()
var ZoomFactor = 1
var ActualZoom = 1
var Speed = Vector3()
var CurrentVerticalSpeed = Vector3()
var JumpAcceleration = 3
var IsAirborne = false
var Joystick_Deadzone = 0.2
var Mouse_Deadzone = 20
var time = 0
var canShoot = true
var rodwidth
var rodwidthMax
var rodwidthMin
var distFromPlayer
var isDead = false
var ignoreNonPlayer = false

enum ROTATION_INPUT{MOUSE, JOYSTICK, MOVE_DIR}


func setMovementSpeed(num):
	MovementSpeed = num; 

func setGunShotFrequency(num):
	gunShotFrequency = num; 

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
	Player = get_node(PlayerPath)
	NonPlayer = get_node(NonPlayerPath)
	RodPivot = get_node(RodPivotPath)
	#setProperInput()
	Camera = get_node(CameraPath)
	MeshInstance = get_node(MeshInstancePath)
	BulletPosition = MeshInstance.get_child(0)
	RayCast = get_node("/root/TestScene/RayCast")
	InnerGimbal =  $InnerGimbal
	rodwidth = get_parent().get_parent().get_node("Rod/CollisionShape/CSGBox").width
	rodwidthMax = rodwidth + 2; 
	rodwidthMin = rodwidth - 2; 
	#print(rodwidthMax)

func setProperInput():
	var s = Input.get_connected_joypads()
	for i in s:
		if playerNum - 1 == i:
			print("Player" + String(playerNum))
			#var allevent = InputMap.get_actions()
			#for e in allevent:
			#	print(e)
			var leftevent = InputMap.get_action_list("move_left")
			#print(leftevent)
			var left = Input.get_joy_axis(i, JOY_AXIS_0)
			#print(left)
			#InputMap.action_add_event(leftevent, left)
		#	var rightevent = InputMap.get_action_list("input/move_right");
		#	var right = Input.get_joy_axis(i, JOY_AXIS_0)
		#	InputMap.action_add_event(rightevent[0], right)
		#	var upevent = InputMap.get_action_list("input/move_up");
		#	var up = Input.get_joy_axis(i, JOY_AXIS_1)
		#	InputMap.action_add_event(upevent[0], up)
		#	var downevent = InputMap.get_action_list("input/move_back");
		#	var down = Input.get_joy_axis(i, JOY_AXIS_1)
		#	InputMap.action_add_event(downevent[0], down)

func calcDistance():
	var distx = abs(Player.get_global_transform().origin.x - NonPlayer.get_global_transform().origin.x)
	var distz = abs(Player.get_global_transform().origin.z - NonPlayer.get_global_transform().origin.z)
	var fullDist = sqrt(pow(distx,2) + pow(distz,2))
	distFromPlayer = fullDist
	#print("CalcDistance")
	#print("X: ", distx)
	#print("Z: ", distz)

func calcDistWithMovement(move):
	#var c = a.dot(b)
	#var d = b.dot(a)  # these are equivalent

	var dotProd = Player.get_global_transform().origin.dot(move)

	#var distx = abs(Player.get_global_transform().origin.x * dotProd *.01 - NonPlayer.get_global_transform().origin.x)
	#var distz = abs(Player.get_global_transform().origin.z * dotProd *.01 - NonPlayer.get_global_transform().origin.z)

	var distx = abs(Player.get_global_transform().origin.x + move.x - NonPlayer.get_global_transform().origin.x)
	var distz = abs(Player.get_global_transform().origin.z + move.z - NonPlayer.get_global_transform().origin.z)

	#print("CalcDistWithMovement")
	#print("X: ", distx)
	#print("Z: ", distz)

	#var mag = distx.dot(distz)
	var fullDist = sqrt(pow(distx,2) + pow(distz,2))
	#print(fullDist)
	return fullDist
	

func _unhandled_input(event):
	#Rotation Mesh with Joystick

	if event is InputEventJoypadMotion:
		var horizontal = Input.get_action_strength("look_right") - Input.get_action_strength("look_left")
		var vertical = Input.get_action_strength("look_up") - Input.get_action_strength("look_back")
		if abs(horizontal) > Joystick_Deadzone or abs(vertical) > Joystick_Deadzone:
			rotateMesh(Vector2(horizontal,vertical), ROTATION_INPUT.JOYSTICK)
		else:
			#Rotate Mesh from last Moved Direction (Left joystick)
			rotateMesh(Speed,ROTATION_INPUT.MOVE_DIR)

	#Rotate Mesh with Mouse Motion
	elif event is InputEventMouseMotion:
		if magnitude(event.get_speed()) > Mouse_Deadzone: # or event is InputEventMouseButton:
			rotateMesh(event, ROTATION_INPUT.MOUSE)

		else:
			#Rotate Mesh from last Moved Direction (WASD Key presses)
			rotateMesh(Speed, ROTATION_INPUT.MOVE_DIR)

	#Rotate Mesh with Mouse Button Left
	elif event is InputEventMouseButton and event.get_button_index() == BUTTON_LEFT:
		rotateMesh(event, ROTATION_INPUT.MOUSE)

	#Zoom
	if event is InputEventMouseButton:
		match event.button_index:
			BUTTON_WHEEL_UP:
				ZoomFactor -= 0.05
			BUTTON_WHEEL_DOWN:
				ZoomFactor += 0.05
		ZoomFactor = clamp(ZoomFactor, MaxZoom, MinZoom)

	#Quit Game
	if event is InputEventKey and event.pressed:
		match event.scancode:
			KEY_ESCAPE:
				get_tree().quit()

func rotateMesh(event_data, input_method):
	match input_method:
		ROTATION_INPUT.MOUSE:
			#event_data is mouse position in viewport
			var rayLength = 100
			var from = Camera.project_ray_origin(event_data.position)
			var to = from + Camera.project_ray_normal(event_data.position)*rayLength
			RayCast.translation = from
			RayCast.cast_to = to
			RayCast.force_raycast_update()
			var collision_point = RayCast.get_collision_point()
			MeshInstance.look_at(collision_point,Vector3.UP)
			var rotationDegree = MeshInstance.get_rotation_degrees().y
			MeshInstance.set_rotation_degrees(Vector3(90,rotationDegree + 180,0))
		ROTATION_INPUT.JOYSTICK:
			#event_data is right joystick axis strength
			var rot = atan2(event_data.y,event_data.x)*180/PI
			rot += InnerGimbal.get_rotation_degrees().y
			rot += 90
			MeshInstance.set_rotation_degrees(Vector3(90,rot,0))
		ROTATION_INPUT.MOVE_DIR:
			#event_data is directional vector to rotate player
			#Check if Player is moving and new movement is different than last direction
			if magnitude(event_data) > 0 and LastDirection.dot(event_data.normalized()) != 0:
				#Rotate in Direction of Movement
				var angle = atan2(event_data.x, event_data.z)
				var char_rot = MeshInstance.get_rotation()
				var rot_y = angle - char_rot.y
				MeshInstance.rotate_y(rot_y)

#Helper math function
func magnitude(vector):
	if typeof(vector) == typeof(Vector2()):
		return sqrt(vector.x*vector.x + vector.y*vector.y)
	elif typeof(vector) == typeof(Vector3()):
		return sqrt(vector.x*vector.x + vector.z*vector.z)

func _process(delta):
	time += delta
	if playerNum == 1:
		#Shoot
		if (Input.is_action_pressed("shoot") && time > gunShotFrequency):
			var bullet = BULLET.instance()
			get_node("/root/").add_child(bullet)
			bullet.set_translation(BulletPosition.get_global_transform().origin)
			bullet.direction = BulletPosition.get_global_transform().basis.y
			time = 0

		#Jump
		if (Input.is_action_pressed("jump")) and not IsAirborne:
			CurrentVerticalSpeed = Vector3(0,MaxJump,0)
			IsAirborne = true
	elif playerNum == 2:
		#Shoot
		if (Input.is_action_pressed("shootP2") && time > gunShotFrequency):
			var bullet = BULLET.instance()
			get_node("/root/").add_child(bullet)
			bullet.set_translation(BulletPosition.get_global_transform().origin)
			bullet.direction = BulletPosition.get_global_transform().basis.y
			time = 0
		#Jump
		if (Input.is_action_pressed("jumpP2")) and not IsAirborne:
			CurrentVerticalSpeed = Vector3(0,MaxJump,0)
			IsAirborne = true

func _physics_process(delta):
	calcDistance()
	if playerNum == 1:
		#Rotation[Camera]
		CameraRotation = RotationSpeed * delta
		if (Input.is_action_pressed("rotate_left")):
			InnerGimbal.rotate(Vector3.UP, CameraRotation)
		elif (Input.is_action_pressed("rotate_right")):
			InnerGimbal.rotate(Vector3.UP, -CameraRotation)

		#Movement
		var CameraTransform = Camera.get_global_transform()
		if(Input.is_action_pressed("move_up")):
			Direction += -CameraTransform.basis[2]
		if(Input.is_action_pressed("move_back")):
			Direction += CameraTransform.basis[2]
		if(Input.is_action_pressed("move_left")):
			Direction += -CameraTransform.basis[0]
		if(Input.is_action_pressed("move_right")):
			Direction += CameraTransform.basis[0]
		Direction.y = 0
		LastDirection = Direction.normalized()
		var MaxSpeed = MovementSpeed * Direction.normalized()
		Accelerate = Deacceleration
		if(Direction.dot(Speed) > 0):
			Accelerate = Acceleration
		Direction = Vector3.ZERO
		Speed = Speed.linear_interpolate(MaxSpeed, delta * Accelerate)
		Movement = Speed
		CurrentVerticalSpeed.y += gravity * delta * JumpAcceleration
		Movement += CurrentVerticalSpeed
		#print("X Differential for Player and Rod: " , ((Player.get_global_transform().origin.x + Movement.x) - RodPivot.get_global_transform().origin.x))
		#print("Z Differential for Player and Rod: " , ((Player.get_global_transform().origin.z + Movement.z) - RodPivot.get_global_transform().origin.z))
		#print("X Differential for Rod and NonPlayer: " , ((RodPivot.get_global_transform().origin.x + Movement.x) - NonPlayer.get_global_transform().origin.x))
		#print("Z Differential for Rod and NonPlayer: " , ((RodPivot.get_global_transform().origin.z + Movement.z) - NonPlayer.get_global_transform().origin.z))
		#if ((abs((Player.get_global_transform().origin.x + Movement.x) - RodPivot.get_global_transform().origin.x) < 20) && (abs((Player.get_global_transform().origin.z + Movement.z) - RodPivot.get_global_transform().origin.z) < 20)
		#&& (abs((NonPlayer.get_global_transform().origin.x + Movement.x) - RodPivot.get_global_transform().origin.x) < 20) && (abs((NonPlayer.get_global_transform().origin.z + Movement.z) - RodPivot.get_global_transform().origin.z) < 20)):
		#	Player.move_and_slide(Movement, Vector3.UP)

		#var distx = abs(Player.get_global_transform().origin.x - NonPlayer.get_global_transform().origin.x)
		#var disty = abs(Player.get_global_transform().origin.y - NonPlayer.get_global_transform().origin.y)
		#var fullDist = sqrt(pow(distx,2) + pow(disty,2))
		#distFromPlayer = fullDist

		#if distFromPlayer <= rodwidthMax || (calcDistWithMovement(Movement) <= rodwidthMax && calcDistWithMovement(Movement) > rodwidthMin):
		if (distFromPlayer <= rodwidthMax && calcDistWithMovement(Movement) >= rodwidthMin) || (distFromPlayer >= rodwidthMin && calcDistWithMovement(Movement) <= rodwidthMax):
			Player.move_and_slide(Movement, Vector3.UP)
		#NonPlayer.move_and_slide(Movement, Vector3.UP)
		#Rod.move_and_slide(Movement, Vector3.UP)
		if Player.is_on_floor() :
			CurrentVerticalSpeed.y = 0
			IsAirborne = false

		#Zoom
		ActualZoom = lerp(ActualZoom, ZoomFactor, delta * ZoomSpeed)
		InnerGimbal.set_scale(Vector3(ActualZoom,ActualZoom,ActualZoom))

	elif playerNum == 2:
		#Rotation[Camera]
		CameraRotation = RotationSpeed * delta
		if (Input.is_action_pressed("rotate_leftP2")):
			InnerGimbal.rotate(Vector3.UP, CameraRotation)
		elif (Input.is_action_pressed("rotate_rightP2")):
			InnerGimbal.rotate(Vector3.UP, -CameraRotation)

		#Movement
		var CameraTransform = Camera.get_global_transform()
		if(Input.is_action_pressed("move_upP2")):
			Direction += -CameraTransform.basis[2]
		if(Input.is_action_pressed("move_backP2")):
			Direction += CameraTransform.basis[2]
		if(Input.is_action_pressed("move_leftP2")):
			Direction += -CameraTransform.basis[0]
		if(Input.is_action_pressed("move_rightP2")):
			Direction += CameraTransform.basis[0]
		Direction.y = 0
		LastDirection = Direction.normalized()
		var MaxSpeed = MovementSpeed * Direction.normalized()
		Accelerate = Deacceleration
		if(Direction.dot(Speed) > 0):
			Accelerate = Acceleration
		Direction = Vector3.ZERO
		Speed = Speed.linear_interpolate(MaxSpeed, delta * Accelerate)
		Movement = Speed
		CurrentVerticalSpeed.y += gravity * delta * JumpAcceleration
		Movement += CurrentVerticalSpeed
		#if ((abs((Player.get_global_transform().origin.x + Movement.x) - RodPivot.get_global_transform().origin.x) < 20) && (abs((Player.get_global_transform().origin.z + Movement.z) - RodPivot.get_global_transform().origin.z) < 20)
		#&& (abs((NonPlayer.get_global_transform().origin.x + Movement.x) - RodPivot.get_global_transform().origin.x) < 20) && (abs((NonPlayer.get_global_transform().origin.z + Movement.z) - RodPivot.get_global_transform().origin.z) < 20)):
		#	Player.move_and_slide(Movement, Vector3.UP)
		#if distFromPlayer <= rodwidthMax || (calcDistWithMovement(Movement) <= rodwidthMax && calcDistWithMovement(Movement) > rodwidthMin):
		if (distFromPlayer <= rodwidthMax && calcDistWithMovement(Movement) >= rodwidthMin) || (distFromPlayer >= rodwidthMin && calcDistWithMovement(Movement) <= rodwidthMax):
			Player.move_and_slide(Movement, Vector3.UP)
		if Player.is_on_floor() :
			CurrentVerticalSpeed.y = 0
			IsAirborne = false

		#Zoom
		ActualZoom = lerp(ActualZoom, ZoomFactor, delta * ZoomSpeed)
		InnerGimbal.set_scale(Vector3(ActualZoom,ActualZoom,ActualZoom))
	pass




func _on_Area_body_entered(body):
	pass # Replace with function body.
