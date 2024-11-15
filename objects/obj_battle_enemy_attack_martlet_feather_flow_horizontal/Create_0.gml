event_inherited();

if (x < 359)
    angle = 0;
else
    angle = 180;

angle_movement = choose(-1, 1);
angle_max = angle + 45;
angle_min = angle - 45;
angle_sway = 3;
image_angle = angle;
