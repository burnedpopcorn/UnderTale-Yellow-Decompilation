if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
image_index = 1;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
direction = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
image_angle = direction + 90;
audio_play_sound(snd_undertale_appear, 1, 0);
scene = 0;
cutscene_timer = 0;
draw_offset_x = 0;
draw_offset_y = 0;
