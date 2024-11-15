if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
battle_box = 3154;
jump_speed = 6;
tongue_attack = false;
friction = 0.33;

if (y < battle_box.y)
{
    image_xscale = -1;
    image_yscale = -1;
}

image_speed = 0.75;
