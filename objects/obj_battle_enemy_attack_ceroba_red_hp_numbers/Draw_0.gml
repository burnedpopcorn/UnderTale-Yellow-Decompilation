var _color_current, current_hp_width;

_color_current = make_color_rgb(255, color_number_current, color_number_current);
draw_set_font(fnt_mars_needs_cunnilingus);

if (player_hp_max_start != global.max_hp_self)
{
    current_hp_width = string_width(string_hash_to_newline(string(global.current_hp_self) + " / "));
    
    if (global.current_hp_self < 10 && global.current_hp_self > -10)
    {
        current_hp_width = string_width(string_hash_to_newline("0" + string(global.current_hp_self) + " / "));
        draw_text_colour(((314 + obj_battle_hp_max_self.sprite_width) - 25) + current_hp_width, 400, string_hash_to_newline(string(global.max_hp_self)), _color_current, _color_current, _color_current, _color_current, global.image_alpha_enemy_attacking);
    }
    else
    {
        draw_text_colour(((314 + obj_battle_hp_max_self.sprite_width) - 25) + current_hp_width, 400, string_hash_to_newline(string(global.max_hp_self)), _color_current, _color_current, _color_current, _color_current, global.image_alpha_enemy_attacking);
    }
}
