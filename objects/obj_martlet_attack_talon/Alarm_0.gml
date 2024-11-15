if (live_call())
    return global.live_result;

image_speed = attack_speed;
x_last = obj_heart_battle_fighting_parent.x - x_diff;
image_blend = c_red;
audio_play_sound(snd_bullet_warning, 1, 0);
alarm[1] = 3;
