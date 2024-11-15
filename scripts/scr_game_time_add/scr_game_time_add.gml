function scr_game_time_add()
{
    global.game_time_counter_add += 1;
    
    if (global.game_time_counter_add >= room_speed)
    {
        global.game_time_seconds_add += 1;
        global.game_time_counter_add -= room_speed;
    }
    
    if (global.game_time_seconds_add >= 60)
    {
        global.game_time_minutes_add += 1;
        global.game_time_seconds_add -= 60;
    }
}
