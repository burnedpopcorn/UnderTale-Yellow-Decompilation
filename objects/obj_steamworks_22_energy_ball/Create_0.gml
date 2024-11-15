var pl_x_diff;

speed = 8;
pl_x_diff = obj_pl.x - obj_steamworks_22_axis_throwing.player_x_last;
direction = point_direction(x, y, obj_pl.x + (pl_x_diff * 15), obj_pl.y);
direction += irandom_range(-5, 5);
