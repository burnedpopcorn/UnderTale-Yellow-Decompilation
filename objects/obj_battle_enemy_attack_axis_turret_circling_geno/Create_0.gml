if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
var battle_box = obj_dialogue_box_battle_transformation_any;
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
bullet_spawn_direction = 0;
fade_out = false;
audio_play_sound(snd_undertale_appear, 1, 0);
attack_distance = 120;
attack_dir = 90;
target = obj_heart_battle_fighting_parent;
attack_target_x = target.x;
attack_target_y = target.y;
bullet_speed = 3;
bullet_spawner = -4;
can_move = true;
can_fire = false;
can_track = true;
shot_number = 3;
