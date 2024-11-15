var player_character;

player_character = global.player_character;
draw_set_font(fnt_hachicro);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(image_alpha);

if (obj_target_bar_battle.damage_type == "betrayed")
{
    draw_text(x, y, string_hash_to_newline(string(global.attacking_damage_stat_betrayal)));
}
else if (obj_target_bar_battle.damage_type == "critical")
{
    if (global.fight_number == 1)
        draw_text(x, y, string_hash_to_newline(string(global.attacking_damage_stat_critical)));
    
    if (global.fight_number == 2)
        draw_text(x, y, string_hash_to_newline(string(global.attacking_damage_stat_critical_2)));
    
    if (global.fight_number == 3)
        draw_text(x, y, string_hash_to_newline(string(global.attacking_damage_stat_critical_3)));
}
else
{
    draw_text(x, y, string_hash_to_newline(string(global.attacking_damage_stat)));
}

draw_set_alpha(1);
