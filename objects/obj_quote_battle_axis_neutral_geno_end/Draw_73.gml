var x_offset;

if (live_call())
    return global.live_result;

if (draw_enabled == true)
{
    draw_set_font(fnt_dotumche);
    draw_set_color(c_black);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    x_offset = 21;
    
    if (text_effect == "twitchy")
        scr_draw_text_effect_twitchy_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + 9);
    else if (text_effect == "circle")
        scr_draw_text_effect_circle_quotebubble_battle(message[message_current], obj_quote_bubble_battle.x + x_offset, obj_quote_bubble_battle.y + 9);
}

draw_set_alpha(draw_alpha_white);
draw_set_color(c_white);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);

if (draw_white_circle == true)
    draw_circle(obj_axis_body_geno.x, obj_axis_body_geno.y, draw_alpha_white * 250, false);

if (instance_exists(obj_heart_yellow_shot_blast_axis_cutscene))
{
    draw_set_alpha(draw_alpha_white);
    
    with (obj_heart_yellow_shot_blast_axis_cutscene)
    {
        draw_sprite_ext(spr_heart_yellow_blast_1, image_index, x, y, 1, laser_width, image_angle, c_white, image_alpha);
        draw_sprite_ext(spr_heart_yellow_blast_2, 0, x, y - 10, laser_length, laser_width, image_angle, c_white, image_alpha);
        draw_sprite_ext(spr_heart_yellow_blast_3, impact_frame_current, x + lengthdir_x(laser_length, direction), y + lengthdir_y(laser_length, direction), 1, laser_width, image_angle, c_white, image_alpha);
    }
    
    draw_set_alpha(1);
}
