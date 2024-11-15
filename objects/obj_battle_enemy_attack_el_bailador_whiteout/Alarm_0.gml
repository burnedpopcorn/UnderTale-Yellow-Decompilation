var i;

if (instance_exists(obj_dialogue_battle_flee))
{
    switch (global.enemy_count)
    {
        case 1:
            if (global.enemy_dead == false)
                global.enemy_exp = 0;
            
            global.player_exp += global.enemy_exp;
            global.player_gold += global.enemy_gold;
            break;
        
        case 2:
            if (global.enemy_dead == false)
                global.enemy_exp = 0;
            
            if (global.enemy_dead_2 == false)
                global.enemy_exp_2 = 0;
            
            global.player_exp += (global.enemy_exp + global.enemy_exp_2);
            global.player_gold += (global.enemy_gold + global.enemy_gold_2);
            break;
        
        case 3:
            if (global.enemy_dead == false)
                global.enemy_exp = 0;
            
            if (global.enemy_dead_2 == false)
                global.enemy_exp_2 = 0;
            
            if (global.enemy_dead_3 == false)
                global.enemy_exp_3 = 0;
            
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

obj_pl.image_alpha = 1;

if (global.party_member != -4)
    global.party_member.image_alpha = 1;

scr_cutscene_end();
room_goto(asset_get_index(global.current_room_overworld));
fade_out = true;
