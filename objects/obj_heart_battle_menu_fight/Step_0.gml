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

script_execute(scr_controls_battle_fight);

if (key_select)
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

if (key_revert && key_select == 0)
{
    if (instance_exists(obj_text_battle_move_selected_enemy_fight_parent))
    {
        with (obj_heart_battle_menu)
        {
            no_loop = false;
            image_alpha = 1;
        }
        
        with (obj_text_battle_move_selected_enemy_fight_parent)
            instance_destroy();
        
        with (obj_battle_hp_enemy_parent)
            instance_destroy();
        
        instance_destroy();
    }
}

if (key_select == 0 && key_revert == 0)
{
    if (key_down && key_up == 0)
    {
        if (global.fight_number >= 3)
            global.fight_number = 1;
        else
            global.fight_number += 1;
        
        check_sound = snd_ceroba_staff_lock;
        
        for (counter = 0; counter < 2; counter += 1)
        {
            if (global.fight_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_fight))
            {
                global.fight_number = 2;
                check_sound += 1;
            }
            
            if (global.fight_number == 2 && !instance_exists(obj_text_battle_move_selected_enemy_fight_2))
            {
                global.fight_number = 3;
                check_sound += 1;
            }
            
            if (global.fight_number == 3 && !instance_exists(obj_text_battle_move_selected_enemy_fight_3))
            {
                global.fight_number = 1;
                check_sound += 1;
            }
        }
        
        if (check_sound < 2)
            audio_play_sound(snd_mainmenu_select, 20, false);
    }
    
    if (key_up && key_down == 0)
    {
        if (global.fight_number <= 1)
            global.fight_number = 3;
        else
            global.fight_number -= 1;
        
        check_sound = snd_ceroba_staff_lock;
        
        for (counter = 0; counter < 2; counter += 1)
        {
            if (global.fight_number == 3 && !instance_exists(obj_text_battle_move_selected_enemy_fight_3))
            {
                global.fight_number = 2;
                check_sound += 1;
            }
            
            if (global.fight_number == 2 && !instance_exists(obj_text_battle_move_selected_enemy_fight_2))
            {
                global.fight_number = 1;
                check_sound += 1;
            }
            
            if (global.fight_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_fight))
            {
                global.fight_number = 3;
                check_sound += 1;
            }
        }
        
        if (check_sound < 2)
            audio_play_sound(snd_mainmenu_select, 20, false);
    }
}

x = obj_dialogue_box_battle.x + 44;

if (global.fight_number == 1)
    y = obj_dialogue_box_battle.y + 36;
else if (global.fight_number == 2)
    y = obj_dialogue_box_battle.y + 68;
else if (global.fight_number == 3)
    y = obj_dialogue_box_battle.y + 100;
