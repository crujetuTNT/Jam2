if(instance_exists(objPlayer)){
var cameraX = (x + mouse_x);
var cameraY = (y + mouse_y);

if(mouse_x<=x && mouse_y<=y)
{
	x += (xTo - (cameraX div 2) - 435)/99;
	y += (yTo - (cameraY div 2) - 375)/99;
}
else if (mouse_x<=x && mouse_y>=y)
{
	x += (xTo - (cameraX div 2) - 435)/99;
	y += (yTo + (cameraY div -2) + 375)/99;
}
else if (mouse_x>=x && mouse_y<=y)
{
	x += (xTo + (cameraX div -2) + 435)/99;
	y += (yTo - (cameraY div 2) - 375)/99;
}
else if (mouse_x>=x && mouse_y>=y)
{
	x += (xTo + (cameraX div -2) + 435)/99;
	y += (yTo + (cameraY div -2) + 375)/99;
}

if(follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);

// Score
show_debug_message(score);
if (sumTimeScore)
{
	score++;
	
	// reset the score timer
	sumTimeScore = false;
	alarm[0] = scorePeriod;
}
}