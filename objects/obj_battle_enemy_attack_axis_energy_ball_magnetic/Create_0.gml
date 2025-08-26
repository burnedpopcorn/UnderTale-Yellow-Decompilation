if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
var battle_box = obj_dialogue_box_battle_transformation_any;
image_index = 0;
image_alpha = 0;
direction = point_direction(x, y, battle_box.x, battle_box.y);
audio_play_sound(snd_undertale_swoosh, 1, 0);
x_scale_modif = 0;
x_scale_inc = 0.5;
x_scale_modif_size = 0.05;
can_move = false;
