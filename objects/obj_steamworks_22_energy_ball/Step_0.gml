if (y >= 170)
{
    audio_play_sound(snd_axis_energy_ball_explode, 1, 0);
    scr_screenshake(8, 2.5);
    instance_destroy();
}

if (place_meeting(x, y, obj_pl) && global.cutscene == false)
{
    audio_play_sound(snd_axis_energy_ball_explode, 1, 0);
    scr_screenshake(8, 2.5);
    instance_destroy();
    obj_pl.state = scr_frozen_state;
    global.battle_enemy_name = "energy balls minifight";
    global.battling_enemy = true;
    global.battling_boss = false;
    global.sound_carry_overworld = true;
    
    if (room != rm_death_screen)
        global.current_room_overworld = room_get_name(room);
    
    global.battle_start = true;
    
    if (!instance_exists(obj_heart_initiate_battle_quick))
        instance_create(x, y, obj_heart_initiate_battle_quick);
}
