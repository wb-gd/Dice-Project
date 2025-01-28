extends Spatial

var _isMoving := false
onready var _pivot := $Pivot
onready var _dice := $Pivot/Dice

func _process(delta):
	if (!_isMoving):
		roll(Vector3.FORWARD)
	
func roll(dir):
	# Move Pivot
	_pivot.translate(dir)
	_dice.translate(-dir)
	
	# Animate
	
	# Update position
	transform.origin += dir * 2
	_pivot.transform = Transform.IDENTITY
	_dice.transform = Transform.IDENTITY
