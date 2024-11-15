if (vulnerable == false)
{
    image_speed = 0.5;
}
else
{
    image_speed = 0;
    image_index = 0;
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
