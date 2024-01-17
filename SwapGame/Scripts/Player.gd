extends CharacterBody2D

const SPEED = 80.0
var JUMP_VELOCITY = -150.0
var PlayerSelected = 1
var gravity = 800
var jumpsRemaing = 1

@onready var Animations = $AnimatedSprite2D

func _ready():
	
	SetPlayer(1,-150.0,"SWalk")

func _physics_process(delta):
	Move()
	HandleJump()
	HandleGravity(delta)
	HandlePlayerSelection()
	move_and_slide()
	CheckGround()
	ChangeSize()
	if Input.is_key_label_pressed(KEY_0):
		World.Reload()
	
func CheckGround():
	if is_on_floor():
		gravity = 800
		jumpsRemaing = 1

func HandleGravity(delta):
	if not is_on_floor():
		velocity.y += gravity * delta 
		Glide()
		DubleJump()

func HandleJump():
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		Jump()

func HandlePlayerSelection():
	if Input.is_key_pressed(KEY_1):
		SetPlayer(1, -150.0,"SWalk")
	elif Input.is_key_pressed(KEY_2):
		SetPlayer(2, -200.0,"CWalk")
	elif Input.is_key_pressed(KEY_3):
		SetPlayer(3, -220.0,"JWalk")
	elif Input.is_key_pressed(KEY_4):
		SetPlayer(4, -200.0,"BWalk")

func SetPlayer(playerId, jumpVelocity,animationName):
	PlayerSelected = playerId
	JUMP_VELOCITY = jumpVelocity
	Animations.play(animationName)
	
func Move():
	velocity.x = SPEED
	
func Jump():
	velocity.y = JUMP_VELOCITY
	
func Glide():
	if Input.is_action_pressed("ui_accept") and PlayerSelected == 2:
		if velocity.y > 0:
			gravity = 30
	else:
		gravity = 800
		
func DubleJump():
	if PlayerSelected == 3:
		if jumpsRemaing > 0:	
			if Input.is_action_just_pressed("ui_accept"):
				Jump()
				jumpsRemaing -= 1
		
func ChangeSize():
	if PlayerSelected == 4:
		global_scale = Vector2(0.7,0.7)
	else:
		global_scale = Vector2(1.1,1.1)
	

