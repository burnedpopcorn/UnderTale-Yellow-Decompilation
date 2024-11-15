script_execute(scr_controls_debug_battle_old);

if (key_display)
{
    if (global.debug_toggle == true)
        global.debug_toggle = false;
    else
        global.debug_toggle = true;
}

if (global.debug_toggle == true)
{
    if (key_reset)
        game_restart();
    
    if (key_fps3)
        room_speed = 3;
    else if (key_fps30)
        room_speed = 30;
    else if (key_fps60)
        room_speed = 60;
}
