extends Node3D

@onready var background_viewport = $base_camera/background_viewport_container/background_viewport
@onready var forground_viewport = $base_camera/forground_viewport_container/forground_viewport

@onready var background_camera = $base_camera/background_viewport_container/background_viewport/background_camera
@onready var forground_camera = $base_camera/forground_viewport_container/forground_viewport/forground_camera

# Called when the node enters the scene tree for the first time.
func _ready():
	_resize()

func _resize():
	background_viewport.size = DisplayServer.window_get_size()
	forground_viewport.size = DisplayServer.window_get_size()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	background_camera.global_transform = GameManager.player.camera_point.global_transform
	forground_camera.global_transform = GameManager.player.camera_point.global_transform

