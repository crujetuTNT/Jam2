if(instance_exists(objPlayer)){
if(point_direction(x, y, objPlayer.x, objPlayer.y) > 157 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 202 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x + sprite_width / 2, objPlayer.y, 3);
	sprite_index = sprSoldierLeft;
}
else if((point_direction(x, y, objPlayer.x, objPlayer.y) > 337 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 23) && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x - sprite_width / 2, objPlayer.y, 3);
	sprite_index = sprSoldierRight;
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 247 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 292 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
	sprite_index = sprSoldierDown;
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 202 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 247 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
	sprite_index = sprSoldierDownLeft;
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 292 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 337 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x, objPlayer.y - sprite_height / 2, 3);
	sprite_index = sprSoldierDownRight;
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 67 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 112 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
	sprite_index = sprSoldierUp;
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 112 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 157 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
	sprite_index = sprSoldierTopLeft;
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 23 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 67 && distance_to_object(objPlayer) <= 500)
{
	move_towards_point(objPlayer.x, objPlayer.y + sprite_height / 2, 3);
	sprite_index = sprSoldierTopRight;
}

if (vspeed == 0 && hspeed == 0 && x<objPlayer.x && sprite_index != sprSoldierChargeRight && sprite_index != sprSoldierChargeLeft)
{
	sprite_index = sprSoldierIdleRight;
}
else if(vspeed == 0 && hspeed == 0 && x>objPlayer.x && sprite_index != sprSoldierChargeRight && sprite_index != sprSoldierChargeLeft)
{
	sprite_index = sprSoldierIdleLeft;
}
else if(sprite_index == sprSoldierChargeRight)
{
	move_towards_point(-objPlayer.x, -objPlayer.y, 30);
}
else if(sprite_index == sprSoldierChargeLeft)
{
	move_towards_point(-objPlayer.x, -objPlayer.y, 30);
}

// Score destroy these instances thanks to the bosss
if (score >= 20 && score <= 25)
{
	instance_destroy();
}
}