direc = sign(x - obj_bowll_head_a.x);
image_xscale = direc * 0.5;
image_yscale = 0.5;
image_xscale_inc = 0.05;
image_yscale_inc = 0.05;
x_speed = direc * 2;
y_speed = 0;
grav = 1;
imagea_normal = 1;
fade = false;
alarm[0] = 1;
depth = (obj_bowll_head_a.depth - obj_bowll_head_a.nostril_max) + obj_bowll_head_a.nostril_count;