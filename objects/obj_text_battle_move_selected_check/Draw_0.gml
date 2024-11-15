draw_set_font(global.font_type_text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
battle_menu_option_x = obj_dialogue_box_battle.x + 68;
battle_menu_option_y = obj_dialogue_box_battle.y + 20;
battle_menu_option_string = "* Check";
script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
