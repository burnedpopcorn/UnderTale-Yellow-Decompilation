var box_width;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("goosic a", "goosic b", "void");
box_width = obj_dialogue_box_battle_transformation_any.sprite_width - 6;
eq_bar_number = 5;
eq_bar_gap = 2;
eq_bar_width = (box_width / eq_bar_number) - (eq_bar_gap * 2);
eq_bar_height[eq_bar_number] = 2;
eq_bar_height_target[eq_bar_number] = 2;
eq_bar_height_max = obj_dialogue_box_battle_transformation_any.sprite_height - 10;
eq_bar_height_min = 2;
scene = -1;
cutscene_timer = 0;
eq_bar_draw_warning_bars = false;
lerp_speed = 0.25;
eq_bar_low_max = 2;
eq_bar_low_current = 0;
eq_bar_hi_max = 3;
eq_bar_hi_current = 0;
eq_bar_collidable = eq_bar_height_max - 20;
attack_number_max = 5;
