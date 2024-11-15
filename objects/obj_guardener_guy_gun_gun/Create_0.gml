if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("guardener", "void", "void");
direction = -90;
image_alpha = 0;
state = 0;
draw_aim_line = false;
can_shoot = false;
shoot_delay = 13;
shoot_delay_max = 13;
shoot_timer = 10;
shoot_timer_max = 10;
shoot_number = 10;
random_y_offset = choose(-5, 5);
audio_play_sound(snd_guardener_gun_cock, 1, 0);
