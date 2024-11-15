damage_number = scr_determine_damage_number_enemy("flower girls", "void", "void");
image_alpha = 0;
bounce_count = 2;
can_jump = false;
hsp = 3;

if (x > obj_dialogue_box_battle_transformation_any.x)
{
    hsp *= -1;
    image_xscale *= -1;
}

if (place_meeting(x, y, obj_battle_enemy_attack_flowergirls_falling_flowers_flower_green))
    instance_destroy();
