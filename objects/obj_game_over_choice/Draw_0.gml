var heart_xx, heart_yy;

draw_set_font(global.font_type_text);
draw_set_alpha(image_alpha);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if (retry_enabled)
    draw_text(320, 280, string_hash_to_newline("Retry"));

if (rhythm_enabled)
{
    draw_text(320, 400, string_hash_to_newline("AUTO-RHYTHM:"));
    
    if (global.option_autorhythm)
        option = "ON";
    else
        option = "OFF";
    
    draw_text(440, 400, string_hash_to_newline(option));
}

if (autofire_enabled)
{
    draw_text(320, 400, string_hash_to_newline(string("AUTO-FIRE ({0}):", global.pause_key)));
    
    if (global.option_autoshoot)
        option = "ON";
    else
        option = "OFF";
    
    draw_text(460, 400, string_hash_to_newline(option));
}

draw_text(320, 340, string_hash_to_newline("Continue"));

if (menu_option_selected == 1)
{
    heart_xx = 320 - (string_width(string_hash_to_newline("Retry")) * 0.5) - 20;
    heart_yy = 298;
}
else if (menu_option_selected == 2)
{
    heart_xx = 320 - (string_width(string_hash_to_newline("Continue")) * 0.5) - 20;
    heart_yy = 358;
}
else if (menu_option_selected == 3)
{
    heart_xx = 320 - (string_width(string_hash_to_newline("AUTO-RHYTHM: ")) * 0.5) - 20;
    heart_yy = 418;
}

draw_sprite(spr_heart_yellow_down, 0, heart_xx, heart_yy);
draw_set_alpha(1);
draw_set_halign(fa_left);
