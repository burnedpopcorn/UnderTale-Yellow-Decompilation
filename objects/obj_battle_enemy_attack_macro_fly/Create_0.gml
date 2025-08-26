if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
soul = obj_heart_battle_fighting_red;
direction = point_direction(x, y, soul.x, soul.y);
speed = 3;
alarm[0] = 15;
