function cutscene_battle_initiate(arg0, arg1, arg2)
{
    global.battle_enemy_name = arg0;
    
    if (arg1 == true)
    {
        global.battling_enemy = false;
        global.battling_boss = true;
    }
    else
    {
        global.battling_enemy = true;
        global.battling_boss = false;
    }
    
    global.battle_start = true;
    global.sound_carry_overworld = arg2;
    
    if (room != rm_death_screen)
        global.current_room_overworld = room_get_name(room);
    
    instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
    cutscene_advance();
    return true;
}
