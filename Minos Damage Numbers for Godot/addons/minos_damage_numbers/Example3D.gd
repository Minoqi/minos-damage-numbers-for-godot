## Code written by Minoqi @2024 under the MIT license
## Documentation: https://github.com/Minoqi/minos-damage-numbers-for-godot

extends Node3D

## Variables
@export var numbersPos : Marker3D


func _on_normal_button_pressed():
	MinosDamageNumbers3D.display_number(5, numbersPos.global_position)


func _on_critical_button_pressed():
	MinosDamageNumbers3D.display_number(5, numbersPos.global_position, MinosDamageNumbers3D.DamageType.CRITICAL_HIT)
