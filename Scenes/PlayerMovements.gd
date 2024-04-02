extends AnimatedSprite2D


var speed = Vector2(0, -100)
var power

func _ready():
	power = $power
	play("default") 

func _physics_process(delta):
	# Mueve el personaje hacia arriba a la velocidad definida
	position += speed * delta
	#power.position = position - Vector2(1, 10)
	
