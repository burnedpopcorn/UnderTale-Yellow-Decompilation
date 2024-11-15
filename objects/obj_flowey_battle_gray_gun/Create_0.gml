if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");

if (x > obj_heart_battle_fighting_parent.x)
    image_yscale *= -1;

image_alpha = 0;
direction = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y + 12);
image_angle = direction - 180;
scene = 0;
cutscene_timer = 0;
