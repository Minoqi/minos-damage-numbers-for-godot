# Installation
Copy the `minos_damage_numbers` directory into your `res://addons/directory`. Then make sure to enable the plugin in `Project Settings -> Plugins`. The autoloads should automatically appear, but in case they don't make sure to add them by calling them `MinosDamageNumbers2D` and `MinosDamageNumbers3D`.

# Usage
Make a script that has a `Marker2D/3D` variable. This is where the numbers will come out of. Then inside the script, just call `display_numbers()` and put in the number as well as the position of the `Marker2D/3D`. By default, it'll select `DamageType.NORMAL` but there's also `DamageType.CRITICAL_HIT` as a built in value. These are used to set the color.

```
@export var numbersPos : Marker2D
func _on_normal_button_pressed():
	MinosDamageNumbers2d.display_number(5, numbersPos.global_position)
```

OR

```
@export var numbersPos : Marker2D
func _on_normal_button_pressed():
	MinosDamageNumbers2d.display_number(5, numbersPos.global_position, MinosDamageNumbers2D.DamageType.CRITICAL_HIT)
```

# Customization
1. *Tween Animation*
To adjust the tween animation, there are 3 variables. `upTweenAmount` is how far up it goes. `upTweenLength` is how long the tween lasts going up. `downTweenLength` is how long the tween lasts as it goes back down.
```
var upTweenAmount : float = 25
var upTweenLength : float = 0.25
var downTweenLength : float = 0.5
```

2. *Text Color*
Easily adjust the color of text depending on the type of damage they take. By default, there are two types, NORMAL and CRITICAL\_HIT. To add more simple add them to the DamageType enum.
```
enum DamageType{
	NORMAL,
	CRITICAL_HIT
}
```

Then you can see all the colors below the #Colors comment.
```
# Colors
var normalColor : Color = Color(248, 248, 242, 255)
var criticalColor : Color = Color(255, 85, 85, 255)
```

Lastly, add them to the `match` statement in the `display_number()` function. *Make sure to divide it by 255!*
```
match _damageType:
	DamageType.NORMAL:
		numberLabel.modulate = normalColor/255
	DamageType.CRITICAL_HIT:
		numberLabel.modulate = criticalColor/255
	_:
		numberLabel.modulate = normalColor/255
```