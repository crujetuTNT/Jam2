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
	newSprite = sprPlayerRight;
}

if (keyboard_check(ord("W")))
{
	vspeed -= maxVel;
	newSprite = sprPlayerUp;
}

if (keyboard_check(ord("S")))
{
	vspeed += maxVel;
	newSprite = sprPlayerDown;
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