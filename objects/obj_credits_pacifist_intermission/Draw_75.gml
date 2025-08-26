if (live_call())
    return global.live_result;

var offset = 18;
draw_set_color(c_white);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
var camera_border_y = 240;
var camera_border_x = 320;

for (var i = 0; i < array_length(credits_entry_one); i++)
{
    if (i == 0)
        draw_set_color(c_yellow);
    else
        draw_set_color(c_white);
    
    draw_text(camera_border_x - 90, (camera_border_y - credits_y_offset) + (i * offset), credits_entry_one[i]);
}

for (var i = 0; i < array_length(credits_entry_two); i++)
{
    if (i == 0)
        draw_set_color(c_yellow);
    else
        draw_set_color(c_white);
    
    draw_text(camera_border_x - 90, (camera_border_y - credits_y_offset) + ((i + 37) * offset), credits_entry_two[i]);
}

draw_set_alpha(credits_final_alpha);

for (var i = 0; i < array_length(credits_entry_three); i++)
{
    if (i == 0)
        draw_set_color(c_yellow);
    else
        draw_set_color(c_white);
    
    draw_text(camera_border_x - 90, 50 + (i * 30), credits_entry_three[i]);
}

draw_set_alpha(1);

if (draw_alpha_white > 0)
{
    draw_set_alpha(draw_alpha_white);
    draw_set_color(c_white);
    draw_rectangle(0, 0, 320, 240, false);
    draw_set_alpha(1);
}

if (draw_end_card == true)
{
    draw_sprite_ext(spr_logo_undertale, 1, 160, 96, 0.5, 0.5, 0, c_white, end_card_alpha);
    draw_sprite_ext(logo_yellow, 1, 160, 128, 0.5, 0.5, 0, c_white, end_card_alpha);
}

if (hat_card_alpha > 0)
{
    draw_sprite_ext(spr_outro_screen, 0, 0, 0, 1, 1, 0, c_white, hat_card_alpha);
    draw_set_alpha(the_end_text_alpha);
    draw_set_font(fnt_mainb);
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_text(160, 65, "THE END");
    draw_set_alpha(1);
}
