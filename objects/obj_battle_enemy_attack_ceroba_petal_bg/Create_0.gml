if (live_call())
    return global.live_result;

random_offset = random_range(0, 10000);
sprite_index = choose(spr_ceroba_attack_petal_1, spr_ceroba_attack_petal_2);
image_alpha = 0.5;
image_blend = c_gray;
