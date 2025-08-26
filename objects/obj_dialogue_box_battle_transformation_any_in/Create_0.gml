image_xscale = obj_dialogue_box_battle_transformation_any.image_xscale;
image_yscale = obj_dialogue_box_battle_transformation_any.image_yscale;
x = obj_dialogue_box_battle_transformation_any.x;
y = obj_dialogue_box_battle_transformation_any.y;
sprite_width_end = 1;
sprite_height_end = 1;
var sprite_width_multiplier = abs(1 - image_xscale);
var sprite_height_multiplier = abs(1 - image_yscale);

if (image_xscale > 1)
    width_increase_type = 1;
else
    width_increase_type = 0;

if (image_yscale > 1)
    height_increase_type = 1;
else
    height_increase_type = 0;

max_frames = 10;
sprite_width_increase = sprite_width_multiplier / max_frames;
sprite_height_increase = sprite_height_multiplier / max_frames;
destination_x = 319;
destination_y = 320;

if (destination_x > x)
    x_increase_type = 1;
else
    x_increase_type = 0;

if (destination_y > y)
    y_increase_type = 1;
else
    y_increase_type = 0;

disjoint_x = destination_x - x;
disjoint_y = destination_y - y;
x_increase = disjoint_x / max_frames;
y_increase = disjoint_y / max_frames;
transform_direction = 1;
no_loop = false;
