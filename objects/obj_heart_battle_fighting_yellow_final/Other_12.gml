if (live_call())
    return global.live_result;

if (vulnerable == false)
{
    if (!alarm[3])
    {
        draw_sprite_hurt = true;
        alarm[3] = 2;
    }
}
else
{
    draw_sprite_hurt = false;
    alarm[3] = -1;
}

if (global.current_pp_self < 0)
    global.current_pp_self = 0;

if (global.current_sp_self < 0)
    global.current_sp_self = 0;

if (global.current_hp_self < 0)
    global.current_hp_self = 0;

if (global.current_hp_self == 0)
{
    global.heart_battle_fighting_x = x;
    global.heart_battle_fighting_y = y;
    
    with (obj_battle_generator)
        audio_extend = false;
    
    audio_stop_all();
    room_goto(rm_death_screen);
}
