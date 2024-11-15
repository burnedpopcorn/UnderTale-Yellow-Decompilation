if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
attack_beam_width = 30;
attack_beam_width_current = 20;
attack_beam_width_inc = attack_beam_width / (0.4 * room_speed);
attack_beam_width_fluctuation = 0;
attack_beam_height = obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top;
attack_beam_grow = true;
attack_beam_draw_alpha = 0;
attack_beam_draw_color = c_white;
attack_beam_flash_timer_max = 15;
attack_beam_flash_timer = 0;
attack_beam_timer = 3;
attack_beam_stage = 1;
