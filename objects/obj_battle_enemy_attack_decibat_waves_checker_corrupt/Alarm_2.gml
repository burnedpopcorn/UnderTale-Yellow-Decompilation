var color, wave;

if (live_call())
    return global.live_result;

color = choose("orange", "blue");
wave = instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.bbox_top - 50, obj_battle_enemy_attack_decibat_wave_blue);
wave.damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
alarm[2] = 30;
