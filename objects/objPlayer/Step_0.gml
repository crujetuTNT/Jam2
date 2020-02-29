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

if(point_direction(x, y, mouse_x, mouse_y) > 67 && point_direction(x, y, mouse_x, mouse_y) <= 112)
{
	newSprite = sprPlayerUp;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 112 && point_direction(x, y, mouse_x, mouse_y) <= 157)
{
	newSprite = sprPlayerUpLeft;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 157 && point_direction(x, y, mouse_x, mouse_y) <= 202)
{
	newSprite = sprPlayerLeft;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 202 && point_direction(x, y, mouse_x, mouse_y) <= 247)
{
	newSprite = sprPlayerDownLeft;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 247 && point_direction(x, y, mouse_x, mouse_y) <= 292)
{
	newSprite = sprPlayerDown;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 292 && point_direction(x, y, mouse_x, mouse_y) <= 337)
{
	newSprite = sprPlayerDownRight;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 337 || point_direction(x, y, mouse_x, mouse_y) <= 22)
{
	newSprite = sprPlayerRight;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 22 && point_direction(x, y, mouse_x, mouse_y) <= 67)
{
	newSprite = sprPlayerUpRight;
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

// Shooting
if (sumTimeScore)
{
	score++;
	
	// reset the shoot timer
	sumTimeScore = false;
	alarm[0] = scorePeriod;
}