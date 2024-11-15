var wave;

if (live_call())
    return global.live_result;

switch (orange_wave_last)
{
    case "left":
        wave = instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 40, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_decibat_wave_orange);
        break;
    
    case "right":
        wave = instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 40, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_decibat_wave_orange);
        break;
}

wave.damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");

if (orange_wave_last == "left")
    orange_wave_last = "right";
else
    orange_wave_last = "left";

alarm[1] = 30;
