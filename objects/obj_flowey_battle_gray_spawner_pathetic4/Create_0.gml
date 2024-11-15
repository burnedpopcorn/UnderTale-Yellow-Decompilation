var xx, yy;

if (live_call())
    return global.live_result;

xx = obj_heart_battle_fighting_parent.x;
yy = obj_heart_battle_fighting_parent.y;
bul = instance_create_depth(xx, yy - 150, -100, obj_flowey_battle_phase_2_gray_pellet);
bul.direction = point_direction(bul.x, bul.y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
bul.image_alpha = 0;
bul.speed = 0;
scene = 0;
cutscene_timer = 0;
