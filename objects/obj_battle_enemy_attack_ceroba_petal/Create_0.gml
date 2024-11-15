if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
random_offset = random_range(0, 10000);
sprite_index = choose(spr_ceroba_attack_petal_1, spr_ceroba_attack_petal_2);
