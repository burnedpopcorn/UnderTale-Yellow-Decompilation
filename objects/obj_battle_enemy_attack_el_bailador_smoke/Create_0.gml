var scale_max, scale_min, default_y, smoke_y_diff_min, smoke_y_diff_max, scale;

stage_master = 2536;
smoke_direction = stage_master.smoke_direction;
scale_max = 1;
scale_min = 0.5;
default_y = stage_master.default_y;
smoke_y_diff_min = stage_master.smoke_y_diff_min;
smoke_y_diff_max = stage_master.smoke_y_diff_max;
scale = scale_min + ((scale_max - scale_min) * ((y - (default_y + smoke_y_diff_min)) / (smoke_y_diff_max - smoke_y_diff_min)));
image_xscale = smoke_direction * scale;
image_yscale = scale;
smoke_speed = 2;
smoke_alpha = 1;
smoke_alpha_dec = 0.015;
image_alpha = stage_master.image_alpha * smoke_alpha;
