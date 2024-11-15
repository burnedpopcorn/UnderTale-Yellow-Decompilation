function scr_game_time_total()
{
    global.game_time_counter += global.game_time_counter_add;
    
    if (global.game_time_counter >= room_speed)
    {
        global.game_time_seconds += 1;
        global.game_time_counter -= room_speed;
    }
    
    global.game_time_seconds += global.game_time_seconds_add;
    
    if (global.game_time_seconds >= 60)
    {
        global.game_time_minutes += 1;
        global.game_time_seconds -= 60;
    }
    
    global.game_time_minutes += global.game_time_minutes_add;
}
