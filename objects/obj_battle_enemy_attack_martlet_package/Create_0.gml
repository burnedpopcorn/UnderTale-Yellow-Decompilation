damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");

if (!instance_exists(obj_martlet_body))
{
    angle_sway = 7;
    fly_speed = irandom_range(5, 6);
    package_vsp = -10;
    package_grav = 0.7;
}
else
{
    angle_sway = 5;
    fly_speed = irandom_range(4, 5);
    package_vsp = -9;
    package_grav = 0.5;
}

if (x > 320)
{
    fly_speed *= -1;
    angle_sway *= -1;
}

battle_box_bottom = obj_dialogue_box_battle_transformation_any.bbox_bottom - (sprite_get_height(sprite_index) - sprite_get_yoffset(sprite_index));
var warning_x = x;
var warning_y = y;
var warning_vsp = package_vsp;

while (warning_y < battle_box_bottom)
{
    warning_vsp += package_grav;
    warning_x += fly_speed;
    warning_y += warning_vsp;
}

instance_create(warning_x, battle_box_bottom - 10, obj_battle_enemy_attack_martlet_package_warning);
can_move = false;
fade_out = false;
image_speed = 0;
image_index = 0;
image_alpha = 0;
