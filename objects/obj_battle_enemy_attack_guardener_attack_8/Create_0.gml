if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
scr_enable_battle_box_surface();
scene = 0;
cutscene_timer = 0;
grass_current = 0;
grass_spawn_x = box.bbox_left + 30;
grass_spawn_y = box.bbox_bottom - 30;
grass_spawn_x_ar = [grass_spawn_x, grass_spawn_x + 40, grass_spawn_x + 80, box.bbox_right - 4, box.bbox_right - 4, box.bbox_right - 4, grass_spawn_x + 80, grass_spawn_x + 40, grass_spawn_x, box.bbox_left + 4, box.bbox_left + 4, box.bbox_left + 4];
grass_spawn_y_ar = [box.bbox_bottom - 4, box.bbox_bottom - 4, box.bbox_bottom - 4, grass_spawn_y, grass_spawn_y - 40, grass_spawn_y - 80, box.bbox_top + 4, box.bbox_top + 4, box.bbox_top + 4, grass_spawn_y - 80, grass_spawn_y - 40, grass_spawn_y];
grass_spawn_direction = [90, 90, 90, 180, 180, 180, 270, 270, 270, 0, 0, 0];
