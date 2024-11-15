if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
attack_variant = 0;
martlet_fly_speed = 0;
martlet_fly_side = choose(-1, -1);

with (obj_martlet_final_base)
{
    sprite_index = spr_martlet_final_fly_away;
    image_index = 0;
    image_speed = 1;
}

can_attack = false;
attack_tick = 0;
