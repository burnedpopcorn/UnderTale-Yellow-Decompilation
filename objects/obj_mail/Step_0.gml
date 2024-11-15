text_draw_min = -string_height_ext(string_hash_to_newline(mail_text), 18, -1) + 180;

if (global.down_key)
{
    if ((text_draw_y - scroll_speed) > text_draw_min)
        text_draw_y -= scroll_speed;
    else
        text_draw_y = text_draw_min;
    
    scrolling_active = true;
    alarm[0] = 15;
}

if (global.up_key)
{
    if ((text_draw_y + scroll_speed) < text_draw_max)
        text_draw_y += scroll_speed;
    else
        text_draw_y = text_draw_max;
    
    scrolling_active = true;
    alarm[0] = 15;
}

if (keyboard_multicheck_pressed(1))
    instance_destroy();

if (scrolling_active)
{
    if (scroller_alpha < 1)
        scroller_alpha += 0.1;
}
else if (scroller_alpha > 0)
{
    scroller_alpha -= 0.1;
}
