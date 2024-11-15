damage_number = scr_determine_damage_number_enemy("dunebud a", "dunebud b", "dunebud c");
image_alpha = 0;
default_y = y;
fade_in = true;
can_vanish = false;

if (x < obj_dialogue_box_battle_transformation_any.x)
    wind_direction = 1;
else
    wind_direction = -1;

rolling_speed = wind_direction * irandom_range(3, 5);
rolling_speed_angle = (90 / (sprite_width / 2)) * -rolling_speed;
bheight_min = 5;
bheight_max = 40;
bheight_ratio = 1;
sign_modifier = -1;
time_elapsed = 0;
max_rise = irandom_range(bheight_min, bheight_max);
time_max = max_rise * bheight_ratio;
time_increase = 1;
