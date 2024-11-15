var enemy_count, enemy_dead, enemy_spared, enemy_dead_2, enemy_spared_2, enemy_dead_3, enemy_spared_3;

enemy_count = global.enemy_count;
enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;

if (enemy_count >= 2)
{
    enemy_dead_2 = global.enemy_dead_2;
    enemy_spared_2 = global.enemy_spared_2;
}

if (enemy_count >= 3)
{
    enemy_dead_3 = global.enemy_dead_3;
    enemy_spared_3 = global.enemy_spared_3;
}

if (key_select_simulate)
{
    if (global.fight_number == 1)
    {
        global.last_action_selected = "Fight";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.fight_number == 2)
    {
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Fight";
        global.last_action_selected_3 = "Nothing";
    }
    else if (global.fight_number == 3)
    {
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Fight";
    }
    
    script_execute(scr_create_player_attack);
    audio_play_sound(snd_battle_item_weapon_select, 20, false);
    
    if (instance_exists(obj_text_battle_move_selected_enemy_fight_parent))
    {
        with (obj_text_battle_move_selected_enemy_fight_parent)
            instance_destroy();
    }
    
    if (instance_exists(obj_battle_hp_enemy_parent))
    {
        with (obj_battle_hp_enemy_parent)
            instance_destroy();
    }
    
    instance_destroy();
}

x = obj_dialogue_box_battle.x + 44;

if (global.fight_number == 1)
    y = obj_dialogue_box_battle.y + 36;
else if (global.fight_number == 2)
    y = obj_dialogue_box_battle.y + 68;
else if (global.fight_number == 3)
    y = obj_dialogue_box_battle.y + 100;
