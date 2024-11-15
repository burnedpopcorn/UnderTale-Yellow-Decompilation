event_inherited();
target_dir = point_direction(x, y, 320, 320);
direction = target_dir;
image_angle = target_dir - (time_to_fade_in * image_angle_inc);
bullet.direction = target_dir;
