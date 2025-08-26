damage_number = scr_determine_damage_number_enemy("cactony a", "cactony b", "cactony c");
var box = obj_dialogue_box_battle_transformation_any;

if (x < box.x)
{
    attack_direction = 1;
    image_angle = 0;
}
else
{
    attack_direction = -1;
    image_angle = 180;
}

image_alpha = 0;
attack_speed = 5;
attack_mult = 2;
angle_increase = 3;
default_x = x;
bd_dist_min = (2 * box.sprite_width) / 3;
bd_dist_passed = false;
move = false;
fade = false;
fade_alarm = 40;
