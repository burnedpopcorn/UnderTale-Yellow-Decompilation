draw_set_font(global.font_type_text);

if (global.enemy_sparing_2 == true || global.enemy_low_hp_2 == true)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
scr_battle_core_directory_enemy_2_name(68, 52);
