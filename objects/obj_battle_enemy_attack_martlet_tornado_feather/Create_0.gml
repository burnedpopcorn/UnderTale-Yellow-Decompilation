damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
sprite_index = obj_battle_enemy_attack_martlet_tornado_checker.feather_sprite;
image_index = 1;
image_speed = 0;
image_angle = 0;
image_alpha = 0;
image_xscale = -1;
image_yscale = 1;
feather_angle = 90;
depth_default = depth;
draw_color_front = 16777215;
draw_color_back = 8421504;
draw_color = draw_color_back;
x_center = obj_battle_enemy_attack_martlet_tornado_checker.x_center;
y_center = obj_battle_enemy_attack_martlet_tornado_checker.y_center;
depth = obj_dialogue_box_battle_transformation_any.depth + 1;
y_difference = 60;
radius_difference = 20;
global.id_store = id;
id_counter = "above";
follow_index = 0;
instance_create(x, y - y_difference, obj_battle_enemy_attack_martlet_tornado_follow);
id_feather[0] = global.id_store;
global.id_store = id;
id_counter = "below";
follow_index = 2;
instance_create(x, y + y_difference, obj_battle_enemy_attack_martlet_tornado_follow);
id_feather[1] = global.id_store;

with (id_feather[0])
{
    y_difference = -id_master.y_difference;
    radius_difference = id_master.radius_difference;
}

with (id_feather[1])
{
    y_difference = id_master.y_difference;
    radius_difference = -id_master.radius_difference;
}

global.id_store = id;
