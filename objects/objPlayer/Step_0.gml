vspeed = 0;
hspeed = 0;

var newSprite = sprite_index; // Create new sprite

// Move
if (keyboard_check(ord("A")))
{
	hspeed -= maxVel;
	newSprite = sprPlayerLeft;
}

if (keyboard_check(ord("D")))
{
	hspeed += maxVel;
}

if (keyboard_check(ord("W")))
{
	vspeed -= maxVel;
}

if (keyboard_check(ord("S")))
{
	vspeed += maxVel;
}

if(point_direction(x, y, mouse_x, mouse_y) >= 45 && point_direction(x, y, mouse_x, mouse_y) < 135)
{
	newSprite = sprPlayerUp;
}
else if(point_direction(x, y, mouse_x, mouse_y) >= 135 && point_direction(x, y, mouse_x, mouse_y) < 225)
{
	newSprite = sprPlayerLeft;
}
else if(point_direction(x, y, mouse_x, mouse_y) >= 225 && point_direction(x, y, mouse_x, mouse_y) < 315)
{
	newSprite = sprPlayerDown;
}
else if(point_direction(x, y, mouse_x, mouse_y) >= 315 || point_direction(x, y, mouse_x, mouse_y) < 45)
{
	newSprite = sprPlayerRight;
}

if (vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdle;
}

// Set sprite
if (sprite_index != newSprite)
{
	sprite_index = newSprite;
}

// Life
if (life <= 0)
{
	instance_destroy();
	//audio_play_sound(sndDeath, 1, false);
}