var line = collision_line(x, y, objPlayer.x, objPlayer.y, objInvisibleWall, false, false);
if(point_direction(x, y, objPlayer.x, objPlayer.y) > 135 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 225 && sprite_index == sprPlayerLeft && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x + sprite_width / 2, objPlayer.y, 3);
}
else if((point_direction(x, y, objPlayer.x, objPlayer.y) > 315 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 45) && sprite_index == sprPlayerRight && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x - sprite_width / 2, objPlayer.y, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 225 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 315 && sprite_index == sprPlayerDown && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 45 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 135 && sprite_index == sprPlayerUp && distance_to_object(objPlayer) <= 500 && line == noone)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
}
else
{
	timerWander++;
	if(collision_circle(x, y, 800, objPlayer, false, false) != noone && timerWander >= 20)
	{
		timerWander = 0;
		move_towards_point(objPlayer.x, objPlayer.y, 0.01);
		if(point_direction(x, y, objPlayer.x, objPlayer.y) > 135 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 225)
		{
			sprite_index = sprPlayerLeft;
		}
		else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 315 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 45)
		{
			sprite_index = sprPlayerRight;
		}
		else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 225 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 315)
		{
			sprite_index = sprPlayerDown;
		}
		else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 45 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 135)
		{
			sprite_index = sprPlayerUp;
		}
	}
}