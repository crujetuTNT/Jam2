hspeed = hspeed/2;
vspeed = vspeed/2;

life = life - 1;

image_blend = make_color_rgb(255, 0, 0);

if (shake)
{
	camera_set_view_pos(view_camera[0], x+random(20), y+random(20));	
	
	shake = false;
	alarm[0] = shakeTime;
}