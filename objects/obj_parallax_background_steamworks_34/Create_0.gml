image_speed = 0.1;
gradient_height = room_height / 1.05;
colors = [65535, make_color_rgb(255, 126, 2), make_color_rgb(237, 0, 143)];
info = sprite_get_info(3321);
image = spr_collisionbox;
info.width /= 2;
info.height = room_height;
