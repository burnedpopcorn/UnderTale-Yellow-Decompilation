damage_number = scr_determine_damage_number_enemy("bowll a", "bowll b", "bowll c");
box = obj_dialogue_box_battle_transformation_any;
generator = 2512;

while (x < (box.bbox_left + generator.marsh_disjoint))
    x += 1;

while (x > (box.bbox_right - generator.marsh_disjoint))
    x -= 1;

image_alpha = 0;
can_drop = true;
random_dir = irandom_range(0, 1);

if (random_dir == 0)
    random_dir = -1;

angle_inc = 3;
default_y = y;
sign_modifier = -1;
time_elapsed = 0;
time_max = 15;
time_increase = 1;
max_rise = 20;
