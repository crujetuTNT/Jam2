cursor_sprite = sprCursor;
window_set_cursor(cr_none);
instance_create_depth(x, y, 10, objShadow);
instance_create_depth(objCamera.x-350, objCamera.y-200, 0, objHealthBar);