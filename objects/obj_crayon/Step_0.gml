if (live_call())
    return global.live_result;

image_alpha = obj_crayon_minigame.draw_alpha;
pointed_at = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);

if (pointed_at == true)
{
    with (obj_crayon)
    {
        if (id != other.id && pointed_at == true)
        {
            other.pointed_at = false;
            exit;
        }
    }
    
    if (keyboard_multicheck_pressed(0) || mouse_check_button_pressed(mb_left))
    {
        if (pointed_at == true)
        {
            audio_play_sound(snd_crayon_select, 1, 0);
            obj_crayon_minigame.crayon_selected = crayon_color;
            draw_y_offset = -10;
        }
    }
    
    draw_y_offset = lerp(draw_y_offset, -5, 0.25);
}
else
{
    draw_y_offset = lerp(draw_y_offset, 0, 0.15);
}
