if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_alpha = 0;
image_speed = 0;

if (x < 320)
    sprite_index = spr_ceroba_pillar_left;
else
    sprite_index = spr_ceroba_pillar_right;

alarm[0] = 5;
