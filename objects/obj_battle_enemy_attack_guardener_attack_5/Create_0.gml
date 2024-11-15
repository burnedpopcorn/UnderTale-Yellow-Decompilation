var box, xx, yy;

if (live_call())
    return global.live_result;

box = 3154;
xx = 320;
yy = box.bbox_top - 60;
instance_create_depth(xx, yy, obj_heart_battle_fighting_parent.depth - 2, obj_battle_enemy_attack_guardener_laser_launcher);
