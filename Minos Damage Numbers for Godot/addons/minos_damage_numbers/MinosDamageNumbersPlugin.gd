## Code written by Minoqi @2024 under the MIT license
## Documentation: https://github.com/Minoqi/minos-damage-numbers-for-godot

@tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("MinosDamageNumbers2D", _get_plugin_path() + "/MinosDamageNumbers2D.gd")
	add_autoload_singleton("MinosDamageNumbers3D", _get_plugin_path() + "/MinosDamageNumbers3D.gd")


func _exit_tree() -> void:
	remove_autoload_singleton("MinosDamageNumbers2D")
	remove_autoload_singleton("MinosDamageNumbers3D")


func _get_plugin_path() -> String:
	return get_script().resource_path.get_base_dir()
