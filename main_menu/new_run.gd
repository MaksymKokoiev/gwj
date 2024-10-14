extends Button

@onready var aUIHover = $"../Audio_UI_Hover"
@onready var aUISelect = $"../Audio_UI_Select"
@onready var aUINewRun = $"../Audio_UI_NewRun"

const RING = preload("res://ring/ring.tscn")




func _on_button_up() -> void:
	aUISelect.play()
	$"..".queue_free()
	$/root/Main.add_child(RING.instantiate())
	



func _on_mouse_entered() -> void:
	aUIHover.play()
