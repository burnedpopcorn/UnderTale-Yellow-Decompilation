if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
scene = 1;
cutscene_timer = 0;
pellet_spawn_noloop = false;
image_speed = 1.2;
image_index = 12;
var box = obj_dialogue_box_battle_transformation_any;
