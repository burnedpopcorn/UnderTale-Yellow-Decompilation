if (live_call())
    return global.live_result;

global.battle_phase = 2;
obj_ceroba_body.anim_loop_time = room_speed * 3;
obj_ceroba_body.sprite_index = spr_ceroba_phase_switch;
obj_ceroba_body.image_speed = 1/3;
obj_ceroba_staff.image_alpha = 0;
obj_ceroba_ponytail.image_alpha = 0;
obj_ceroba_hand_left.image_alpha = 0;
obj_ceroba_hand_right.image_alpha = 0;
obj_ceroba_head.image_alpha = 0;
scr_audio_fade_out(mus_trial_by_fury, 500);
audio_play_sound(snd_ceroba_staff_spin, 1, 0);
