draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//image_angle += 1;
//draw_text_transformed(room_width / 2, room_height / 2, "GAME OVER!", 4, 4, image_angle);
draw_text_transformed(room_width / 2, 15, "Score: "+string(score), 1.5, 1.5, image_angle);