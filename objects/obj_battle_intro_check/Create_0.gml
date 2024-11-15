var battle_enemy_name;

battle_enemy_name = global.battle_enemy_name;

if (global.game_mode == "customs")
{
    if (!instance_exists(obj_battle_generator))
        instance_create(0, 0, obj_battle_generator);
    
    instance_destroy();
}
else if (global.game_mode == "yellow")
{
    if (battle_enemy_name == "decibat")
    {
        script_execute(scr_generate_battle_decibat_intro);
    }
    else
    {
        if (!instance_exists(obj_battle_generator))
            instance_create(0, 0, obj_battle_generator);
        
        instance_destroy();
    }
}
