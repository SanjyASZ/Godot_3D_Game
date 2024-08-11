extends Node3D

@onready var spring_arm: SpringArm3D = $"."

signal set_cam_rotation(_cam_rotation: float)

var yaw : float = 0
var pitch : float = 0

var mouse_sensitivity: float = 0.07

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.x -= event.relative.y * mouse_sensitivity
		rotation_degrees.x = clamp(rotation_degrees.x,-90.0,30.0)
		
		rotation_degrees.y -= event.relative.x * mouse_sensitivity
		rotation_degrees.y = wrapf(rotation_degrees.x,0.0,360.0)
		
func _physics_process(delta: float) -> void:
	pass
	#set_cam_rotation.emit(yaw_node.rotation.y)
