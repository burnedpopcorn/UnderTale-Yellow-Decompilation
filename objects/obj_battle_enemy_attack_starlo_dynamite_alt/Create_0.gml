damage_number = scr_determine_damage_number_enemy("starlo", "void", "void");
image_alpha = 0;
can_jump = false;
hsp = 3.5;

if (x > obj_dialogue_box_battle_transformation_any.x)
{
    hsp *= -1;
    image_xscale *= -1;
}

alarm[0] = 1;
