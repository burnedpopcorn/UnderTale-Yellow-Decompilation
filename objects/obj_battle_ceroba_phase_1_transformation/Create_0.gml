if (live_call())
    return global.live_result;

scene = -1;
cutscene_timer = 0;
ceroba_shake_intensity = 0;
ring_timer = 0;
ring_timer_max = 15;
bullet_speed = 4;
bullet_speed_max = bullet_speed;
charge_number = 8;
soul_hurt_count = 0;
soul_shake_modif = 0.06;
soul_flash_overlay = 0;
soul_x_offset = 0;
soul_y_offset = 0;
obj_heart_battle_fighting_parent.image_alpha = 0;
draw_alpha = 0;
global.hit_self = false;
scr_audio_fade_out(545, 5000);
