if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
scr_enable_battle_box_surface();
scene = 0;
cutscene_timer = 0;
grass_spawn_count = 4;
grass_spawn_x = box.bbox_left + 20;
grass_spawn_inc = 40;
