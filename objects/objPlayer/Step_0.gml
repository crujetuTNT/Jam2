// Life
if (life <= 0)
{
	instance_create_depth(x, y, 0, objPhantom);
	instance_destroy();
	//audio_play_sound(sndDeath, 1, false);
}
else
{
vspeed = 0;
hspeed = 0;

var newSprite = sprite_index; // Create new sprite

// Move
if (keyboard_check(ord("A")))
{
	hspeed -= maxVel;
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

// Run
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

// Idle
if ((point_direction(x, y, mouse_x, mouse_y) > 337 || point_direction(x, y, mouse_x, mouse_y) <= 22) && vspeed == 0 && hspeed == 0) // Right
{
	newSprite = sprPlayerIdleRight;
}
else if (point_direction(x, y, mouse_x, mouse_y) > 157 && point_direction(x, y, mouse_x, mouse_y) <= 202 && vspeed == 0 && hspeed == 0) // Left
{
	newSprite = sprPlayerIdleLeft;
}
if(point_direction(x, y, mouse_x, mouse_y) > 67 && point_direction(x, y, mouse_x, mouse_y) <= 112 && vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdleUp;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 112 && point_direction(x, y, mouse_x, mouse_y) <= 157 && vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdleUpLeft;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 202 && point_direction(x, y, mouse_x, mouse_y) <= 247 && vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdleDownLeft;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 247 && point_direction(x, y, mouse_x, mouse_y) <= 292 && vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdleDown;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 292 && point_direction(x, y, mouse_x, mouse_y) <= 337 && vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdleDownRight;
}
else if(point_direction(x, y, mouse_x, mouse_y) > 22 && point_direction(x, y, mouse_x, mouse_y) <= 67 && vspeed == 0 && hspeed == 0)
{
	newSprite = sprPlayerIdleUpRight;
}

// Score
if (boolScore)
{
	score++;
	
	// reset the life reload timer
	boolScore = false;
	alarm[3] = numPeriod;
}

// Recover life
if (reloadLife)
{
	life++;
	
	// reset the life reload timer
	reloadLife = false;
	alarm[0] = lifeUp;
}

// Shooting
if (canShoot && mouse_check_button_released(mb_left))
{
	spriteShoot = true;
	var bullet = instance_create_depth(x+20, y+100, depth + 1, objShootPlayer);
	bullet.direction = point_direction(x, y, mouse_x, mouse_y);
	bullet.speed = bulletSpeed;
	
	// reset the shoot timer
	canShoot = false;
	alarm[1] = shootTime;
}

if (spriteShoot)
{
	show_debug_message(spriteShoot);
	if (point_direction(x, y, mouse_x, mouse_y) > 337 || point_direction(x, y, mouse_x, mouse_y) <= 22) // Right
	{
		newSprite = sprPlayerShootRight;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 157 && point_direction(x, y, mouse_x, mouse_y) <= 202) // Left
	{
		newSprite = sprPlayerShootLeft;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 67 && point_direction(x, y, mouse_x, mouse_y) <= 112) // Up
	{
		newSprite = sprPlayerShootUp;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 247 && point_direction(x, y, mouse_x, mouse_y) <= 292) // Down
	{
		newSprite = sprPlayerShootDown;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 112 && point_direction(x, y, mouse_x, mouse_y) <= 157) // Top left
	{
		newSprite = sprPlayerShootTopLeft;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 22 && point_direction(x, y, mouse_x, mouse_y) <= 67) // Top right
	{
		newSprite = sprPlayerShootTopRight;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 202 && point_direction(x, y, mouse_x, mouse_y) <= 247) // Down left
	{
		newSprite = sprPlayerShootDownLeft;
	}
	else if (point_direction(x, y, mouse_x, mouse_y) > 292 && point_direction(x, y, mouse_x, mouse_y) <= 337) // Down right
	{
		newSprite = sprPlayerShootDownRight;
	}
}
// Camera
var cameraX = (x + mouse_x);
var cameraY = (y + mouse_y);

if(mouse_x<=x && mouse_y<=y)
{
	camera_set_view_pos(view_camera[0], (cameraX div 2) - 435, (cameraY div 2) - 375);
}
else if (mouse_x<=x && mouse_y>=y)
{
	camera_set_view_pos(view_camera[0], (cameraX div 2) - 435, -(cameraY div -2) - 375);
}
else if (mouse_x>=x && mouse_y<=y)
{
	camera_set_view_pos(view_camera[0], -(cameraX div -2) - 435, (cameraY div 2) - 375);
}
else if (mouse_x>=x && mouse_y>=y)
{
	camera_set_view_pos(view_camera[0], -(cameraX div -2) - 435, -(cameraY div -2) - 375);
}

// Set sprite
if (sprite_index != newSprite)
{
	sprite_index = newSprite;
}

// Score destroy tu instance the bosss
if (score >= 20 && bossCreate == false)
{
	instance_create_depth(x, y+80, depth + 1, objBoss);
	bossCreate = true;
}

image_blend = make_color_rgb(255, 255, 255);
}