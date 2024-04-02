extends Node2D

var parallax_layer 

func _ready():
	parallax_layer = $ParallaxBackground/ParallaxLayer
	
	parallax_layer.motion_mirroring = Vector2(0, 1024 )
