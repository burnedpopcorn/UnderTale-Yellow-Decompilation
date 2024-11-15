if (instance_exists(obj_dialogue_box_battle))
{
    if (obj_dialogue_box_battle.image_alpha == 0)
        exit;
}
else
{
    exit;
}

draw_set_font(global.font_type_text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (instance_exists(obj_dialogue_box_battle))
{
    if (portrait_enabled == true)
    {
        if (portrait[message_current] != -4)
        {
            if (text_effect == "twitchy")
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_dialogue);
            
            draw_sprite_ext(portrait[message_current], portrait_image_index, obj_dialogue_box_battle.x + global.portrait_b_disjoint_x_starlo, obj_dialogue_box_battle.y + global.portrait_b_disjoint_y_starlo, 1, 1, 0, c_white, 1);
        }
        else if (text_effect == "twitchy")
        {
            script_execute(scr_draw_text_effect_twitchy_textbox_battle);
        }
    }
    else if (text_effect == "twitchy")
    {
        script_execute(scr_draw_text_effect_twitchy_textbox_battle);
    }
}
