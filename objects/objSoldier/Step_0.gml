var line = collision_line(x, y, objPlayer.x, objPlayer.y, objInvisibleWall, false, false);
if(point_direction(x, y, objPlayer.x, objPlayer.y) > 157 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 202 && sprite_index == sprSoldierLeft && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x + sprite_width / 2, objPlayer.y, 3);
}
else if((point_direction(x, y, objPlayer.x, objPlayer.y) > 337 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 23) && sprite_index == sprSoldierRight && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x - sprite_width / 2, objPlayer.y, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 247 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 292 && sprite_index == sprSoldierDown && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 202 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 247 && sprite_index == sprSoldierDownLeft && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 292 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 337 && sprite_index == sprSoldierDownRight && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 67 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 112 && sprite_index == sprSoldierUp && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 112 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 157 && sprite_index == sprSoldierTopLeft && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 23 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 67 && sprite_index == sprSoldierTopRight && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
}
else
{
	timerWander++;
	if(collision_circle(x, y, 700, objPlayer, false, false) != noone && timerWander >= 20)
	{
		timerWander = 0;
		move_towards_point(objPlayer.x, objPlayer.y, 0.01);
		if(point_direction(x, y, objPlayer.x, objPlayer.y) > 135 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 225)
		{
			sprite_index = sprSoldierLeft;
		}
		else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 315 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 45)
		{
			sprite_index = sprSoldierRight;
		}
		else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 225 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 315)
		{
			sprite_index = sprSoldierDown;
		}
		else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 45 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 135)
		{
			sprite_index = sprSoldierUp;
		}
	}
}

if (vspeed == 0 && hspeed == 0)
	sprite_index = sprSoldierIdle;