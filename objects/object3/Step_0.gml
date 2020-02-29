var line = collision_line(x, y, objPlayer.x, objPlayer.y, objInvisibleWall, false, false);
if(point_direction(x, y, objPlayer.x, objPlayer.y) > 135 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 225 && sprite_index == sprPlayerLeft && distance_to_object(objPlayer) <= 300 && line == noone)
{
}
else if((point_direction(x, y, objPlayer.x, objPlayer.y) > 315 || point_direction(x, y, objPlayer.x, objPlayer.y) <= 45) && sprite_index == sprPlayerRight && distance_to_object(objPlayer) <= 300 && line == noone)
{
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 225 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 315 && sprite_index == sprPlayerDown && distance_to_object(objPlayer) <= 300 && line == noone)
{
}
else if(point_direction(x, y, objPlayer.x, objPlayer.y) > 45 && point_direction(x, y, objPlayer.x, objPlayer.y) <= 135 && sprite_index == sprPlayerUp && distance_to_object(objPlayer) <= 300 && line == noone)
{
}
else
{
}