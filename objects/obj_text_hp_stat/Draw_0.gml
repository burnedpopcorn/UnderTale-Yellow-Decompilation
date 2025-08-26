var game_mode = global.game_mode;
var battle_enemy_name = global.battle_enemy_name;
draw_set_font(fnt_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (game_mode == "customs")
{
    if (global.current_hp_self < 10 && global.current_hp_self > -10)
        draw_text_colour((314 + obj_battle_hp_max_self.sprite_width) - 25, 400, string_hash_to_newline("0" + string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
    else
        draw_text_colour((314 + obj_battle_hp_max_self.sprite_width) - 25, 400, string_hash_to_newline(string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
}
else if (game_mode == "yellow")
{
    if (battle_enemy_name == "flowey intro" || battle_enemy_name == "shufflers")
    {
        if (global.current_hp_self < 10 && global.current_hp_self > -10)
            draw_text_colour((353 + obj_battle_hp_max_self.sprite_width) - 25, 400, string_hash_to_newline("0" + string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
        else
            draw_text_colour((353 + obj_battle_hp_max_self.sprite_width) - 25, 400, string_hash_to_newline(string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
    }
    else if (battle_enemy_name == "ceroba" && instance_exists(obj_ceroba_phase_2_red_shader))
    {
    }
    else if (global.current_hp_self < 10 && global.current_hp_self > -10)
    {
        draw_text_colour((314 + obj_battle_hp_max_self.sprite_width) - 25, 400, string_hash_to_newline("0" + string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
    }
    else
    {
        draw_text_colour((314 + obj_battle_hp_max_self.sprite_width) - 25, 400, string_hash_to_newline(string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
    }
}
