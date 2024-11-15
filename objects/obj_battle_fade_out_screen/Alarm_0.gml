var i, game_mode, battle_enemy_name;

if (instance_exists(obj_dialogue_battle_flee))
{
    switch (global.enemy_count)
    {
        case 1:
            if (global.enemy_dead == false)
            {
                global.enemy_exp = 0;
                global.enemy_gold = 0;
            }
            
            global.player_exp += global.enemy_exp;
            global.player_gold += global.enemy_gold;
            break;
        
        case 2:
            if (global.enemy_dead == false)
            {
                global.enemy_gold = 0;
                global.enemy_exp = 0;
            }
            
            if (global.enemy_dead_2 == false)
            {
                global.enemy_gold_2 = 0;
                global.enemy_exp_2 = 0;
            }
            
            global.player_exp += (global.enemy_exp + global.enemy_exp_2);
            global.player_gold += (global.enemy_gold + global.enemy_gold_2);
            break;
        
        case 3:
            if (global.enemy_dead == false)
            {
                global.enemy_gold = 0;
                global.enemy_exp = 0;
            }
            
            if (global.enemy_dead_2 == false)
            {
                global.enemy_gold_2 = 0;
                global.enemy_exp_2 = 0;
            }
            
            if (global.enemy_dead_3 == false)
            {
                global.enemy_gold_3 = 0;
                global.enemy_exp_3 = 0;
            }
            
            global.player_exp += (global.enemy_exp + global.enemy_exp_2 + global.enemy_exp_3);
            global.player_gold += (global.enemy_gold + global.enemy_gold_2 + global.enemy_gold_3);
            break;
    }
    
    if (global.player_exp >= global.player_exp_next[global.player_level])
    {
        for (i = global.player_level; i <= 20; i += 1)
        {
            if (global.player_exp >= global.player_exp_next[i])
            {
                global.player_level = i + 1;
                global.max_hp_self = global.player_hp_next[i];
                global.player_attack = global.player_attack_next[i];
                global.player_defense = global.player_defense_next[i];
            }
            else
            {
                break;
            }
        }
    }
}

game_mode = global.game_mode;

if (game_mode == "customs")
{
    battle_enemy_name = global.battle_enemy_name;
    
    if (battle_enemy_name == "craniex")
    {
        if (global.enemy_spared == true)
            global.enemy_craniex_status = "spared";
        else if (global.enemy_dead == true)
            global.enemy_craniex_status = "dead";
    }
    
    if (battle_enemy_name == "ms mettaton")
    {
        if (global.enemy_spared == true)
            global.enemy_ms_mettaton_status = "spared";
        else if (global.enemy_dead == true)
            global.enemy_ms_mettaton_status = "dead";
    }
    
    room_goto(rm_black_screen_cutscene);
}
else if (game_mode == "yellow")
{
    obj_pl.image_alpha = 1;
    
    if (global.party_member != -4 && instance_exists(global.party_member))
        global.party_member.image_alpha = 1;
    
    scr_cutscene_end();
    room_goto(asset_get_index(global.current_room_overworld));
    instance_create(0, 0, obj_overworld_fade_in_screen);
    global.sound_carry_overworld = false;
}
