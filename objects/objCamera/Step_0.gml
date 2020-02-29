//------------WORK OUT MOUSE POSITION
global.mouse_actual_x = round(camera_get_view_x(cam) + (device_mouse_raw_x(0) * (global.game_width/global.window_width)));
global.mouse_actual_y = round(camera_get_view_y(cam) + (device_mouse_raw_y(0) * (global.game_height/global.window_height)));

//------------SET CAMERA POSITION BASEDD ON PLAYER AND OFFSET
cam_position_x = mean(cam_target.x, cam_target.x, cam_target.x, cam_target.x, global.mouse_actual_x);
cam_position_y = mean(cam_target.y, cam_target.y, cam_target.y, cam_target.y, global.mouse_actual_y);
if (point_distance(cam_target.x, cam_target.y, cam_position_x, cam_position_y) > cam_max_distance) {
    var dir = point_direction(cam_target.x, cam_target.y, cam_position_x, cam_position_y);
    cam_position_x = cam_target.x + lengthdir_x(cam_max_distance, dir);
    cam_position_y = cam_target.y + lengthdir_y(cam_max_distance, dir);
}

//-------------SET CAMERA POSITION TO CORRECT CAMERA WIDTH/HEIGHT
cam_position_x -= (global.game_width/2)
cam_position_y -= (global.game_height/2)

//-------------MAKE SURE IS INT
round(cam_position_x);
round(cam_position_y);

//------------UPDATE CAMERA
camera_set_view_pos(cam, cam_position_x, cam_position_y);