scr_get_input();

if (keyboard_check_pressed(vk_f4) || (keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter)))
{
    if (window_get_fullscreen())
    {
        window_set_fullscreen(false);
        display_set_gui_size(320, 240);
    }
    else
    {
        window_set_fullscreen(true);
    }
}

if (keyboard_check_pressed(vk_escape))
    instance_create(__view_get(e__VW.XView, 0) + 50, __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4) + 10, obj_quitting);
