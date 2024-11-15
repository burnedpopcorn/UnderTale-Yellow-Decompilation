var game_mode, world_current;

if (global.current_hp_self == 0)
    exit;

game_mode = global.game_mode;

if (game_mode == "customs")
{
}
else if (game_mode == "yellow")
{
    script_execute(scr_determine_end_battle_flags_yellow);
    script_execute(scr_determine_enemy_status_flags_yellow);
    script_execute(scr_determine_yellow_text_flags_yellow);
    script_execute(scr_determine_genocide_counter_yellow);
}

if (global.enemy_dead == true || global.enemy_dead_2 == true || global.enemy_dead_3 == true)
{
    world_current = scr_determine_world_value_yellow();
    
    if (world_current == 4 && global.route == 2)
    {
        if (global.party_member == 1171 && global.battle_enemy_name != "axis" && global.battle_enemy_name != "guardener")
        {
            if (global.sworks_flag[41] == 0)
            {
                if (!instance_exists(obj_enemy_kill_check_pacifist_steamworks))
                    instance_create(0, 0, obj_enemy_kill_check_pacifist_steamworks);
                
                global.sworks_flag[41] = 1;
            }
        }
    }
    else if (global.route == 2)
    {
        global.route = 1;
    }
}

global.enemy_dead = 0;
global.enemy_dead_2 = 0;
global.enemy_dead_3 = 0;
