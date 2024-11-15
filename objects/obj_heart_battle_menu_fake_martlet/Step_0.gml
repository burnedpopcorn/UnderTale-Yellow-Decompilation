var battle_menu_number, battle_enemy_name, enemy_count, game_mode;

if (live_call())
    return global.live_result;

battle_menu_number = global.battle_menu_number;
battle_enemy_name = global.battle_enemy_name;
enemy_count = global.enemy_count;
game_mode = global.game_mode;
fade_in = true;

if (fade_in == true && image_alpha < 1)
    image_alpha += 0.1;
else
    fade_in = false;

if (key_select_simulate)
{
    key_select_simulate = 0;
    
    if (battle_menu_number == 1)
    {
        instance_create(0, 0, obj_text_battle_move_selected_enemy_fight);
        
        if (enemy_count >= 2)
        {
            if (global.enemy_dead_2 == false && global.enemy_spared_2 == false)
                instance_create(0, 0, obj_text_battle_move_selected_enemy_fight_2);
        }
        
        if (enemy_count >= 3)
        {
            if (global.enemy_dead_3 == false && global.enemy_spared_3 == false)
                instance_create(0, 0, obj_text_battle_move_selected_enemy_fight_3);
        }
        
        instance_create_depth(obj_dialogue_box_battle.x + 44, obj_dialogue_box_battle.y + 36, -700, obj_heart_battle_menu_fight_fake_martlet);
        instance_destroy();
        script_execute(scr_battle_core_directory_hp_displacements);
        script_execute(scr_determine_can_display_enemy_hp_ui);
        
        if (enemy_count >= 1)
        {
            if (global.enemy_vulnerable == false && global.enemy_dead == false && global.enemy_spared == false)
            {
                with (obj_battle_hp_current_enemy)
                    instance_destroy();
                
                with (obj_battle_hp_max_enemy)
                    instance_destroy();
            }
        }
        
        if (enemy_count >= 2)
        {
            if (global.enemy_vulnerable_2 == false && global.enemy_dead_2 == false && global.enemy_spared_2 == false)
            {
                with (obj_battle_hp_current_enemy_2)
                    instance_destroy();
                
                with (obj_battle_hp_max_enemy_2)
                    instance_destroy();
            }
        }
        
        if (enemy_count >= 3)
        {
            if (global.enemy_vulnerable_3 == false && global.enemy_dead_3 == false && global.enemy_spared_3 == false)
            {
                with (obj_battle_hp_current_enemy_3)
                    instance_destroy();
                
                with (obj_battle_hp_max_enemy_3)
                    instance_destroy();
            }
        }
        
        with (obj_dialogue_battle_move_select_parent)
            instance_destroy();
        
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        image_alpha = 0;
    }
    
    if (battle_menu_number == 2)
    {
        if (global.enemy_dead == false && global.enemy_spared == false)
            instance_create(0, 0, obj_text_battle_move_selected_enemy_name);
        
        if (enemy_count >= 2)
        {
            if (global.enemy_dead_2 == false && global.enemy_spared_2 == false)
                instance_create(0, 0, obj_text_battle_move_selected_enemy_name_2);
        }
        
        if (enemy_count >= 3)
        {
            if (global.enemy_dead_3 == false && global.enemy_spared_3 == false)
                instance_create(0, 0, obj_text_battle_move_selected_enemy_name_3);
        }
        
        instance_create(obj_dialogue_box_battle.x + 44, obj_dialogue_box_battle.y + 36, obj_heart_battle_menu_act);
        
        with (obj_dialogue_battle_move_select_parent)
            instance_destroy();
        
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        image_alpha = 0;
    }
    
    if (battle_menu_number == 3)
    {
        if (obj_item.image_index == 1)
        {
            global.item_page_count = 1;
            global.item_number_row = 1;
            global.item_number_column = 1;
            
            if (global.item_slot[1] != "Nothing")
                instance_create(0, 0, obj_text_battle_move_selected_item_1);
            
            if (global.item_slot[2] != "Nothing")
                instance_create(0, 0, obj_text_battle_move_selected_item_2);
            
            if (global.item_slot[3] != "Nothing")
                instance_create(0, 0, obj_text_battle_move_selected_item_3);
            
            if (global.item_slot[4] != "Nothing")
                instance_create(0, 0, obj_text_battle_move_selected_item_4);
            
            instance_create(0, 0, obj_text_battle_move_selected_item_page_count);
            instance_create(obj_dialogue_box_battle.x + 44, obj_dialogue_box_battle.y + 36, obj_heart_battle_menu_item);
            
            with (obj_dialogue_battle_move_select_parent)
                instance_destroy();
            
            audio_play_sound(snd_battle_item_weapon_select, 20, false);
            image_alpha = 0;
        }
        else
        {
            audio_play_sound(snd_hurt, 20, false);
        }
    }
    
    if (battle_menu_number == 4)
    {
        instance_create(0, 0, obj_text_battle_move_selected_spare);
        
        if (global.enemy_fleeable == true)
            instance_create(0, 0, obj_text_battle_move_selected_flee);
        
        instance_create(obj_dialogue_box_battle.x + 44, obj_dialogue_box_battle.y + 36, obj_heart_battle_menu_mercy);
        
        with (obj_dialogue_battle_move_select_parent)
            instance_destroy();
        
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        image_alpha = 0;
    }
}
