var i;

switch (global.enemy_count)
{
    case 1:
        if (global.enemy_dead == false)
            global.enemy_exp = 0;
        
        global.player_exp += global.enemy_exp;
        global.player_gold += global.enemy_gold;
        message[0] = "* YOU WON!#* You earned " + string(global.enemy_exp) + " XP and " + string(global.enemy_gold) + " gold.";
        break;
    
    case 2:
        if (global.enemy_dead == false)
            global.enemy_exp = 0;
        
        if (global.enemy_dead_2 == false)
            global.enemy_exp_2 = 0;
        
        global.player_exp += (global.enemy_exp + global.enemy_exp_2);
        global.player_gold += (global.enemy_gold + global.enemy_gold_2);
        message[0] = "* YOU WON!#* You earned " + string(global.enemy_exp + global.enemy_exp_2) + " XP and " + string(global.enemy_gold + global.enemy_gold_2) + " gold.";
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
        message[0] = "* YOU WON!#* You earned " + string(global.enemy_exp + global.enemy_exp_2 + global.enemy_exp_3) + " XP and " + string(global.enemy_gold + global.enemy_gold_2 + global.enemy_gold_3) + " gold.";
        break;
    
    default:
        message[0] = "* YOU WON!#* You earned 0 XP and 0 gold.";
}

if (global.player_exp >= global.player_exp_next[global.player_level])
{
    for (i = global.player_level; i <= 20; i += 1)
    {
        if (global.player_exp >= global.player_exp_next[i])
        {
            global.player_level = i + 1;
            global.max_hp_self = global.player_hp_next[i + 1];
            global.player_attack = global.player_attack_next[i + 1];
            global.player_defense = global.player_defense_next[i + 1];
        }
        else
        {
            break;
        }
    }
    
    audio_play_sound(snd_love_increased, 20, 0);
    message[0] = message[0] + "#* Your LOVE increased.";
}

message_current = 0;
message_end = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
moveable = true;
script_execute(scr_generate_text_counters);
