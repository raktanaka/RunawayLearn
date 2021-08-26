extends Actor

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 500
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("move_right"):
		position.x += 1.0
	if Input.is_action_pressed("move_left"):
		position.x -= 1.0
	if Input.is_action_pressed("move_down"):
		position.y += 1.0
	if Input.is_action_pressed("move_up"):
		position.y -= 1.0
	velocity = velocity.normalized() * speed
	
func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
	
	
	
	
	
	
	
	
