var tar;

if (live_call())
    return global.live_result;

tar = instance_create_depth(x, y, depth - 1, obj_flowey_battle_gray_horse_target);
tar.spawner = id;
