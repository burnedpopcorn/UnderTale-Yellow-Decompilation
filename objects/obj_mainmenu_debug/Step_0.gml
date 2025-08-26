if (live_call())
    return global.live_result;

scr_get_input();

if (global.down_keyp)
{
    if (menu_selection < 8)
        menu_selection += 1;
    else
        menu_selection = 0;
    
    audio_play_sound(snd_mo_pop, 1, 0);
}

if (global.up_keyp)
{
    if (menu_selection > 0)
        menu_selection -= 1;
    else
        menu_selection = 8;
    
    audio_play_sound(snd_mo_pop, 1, 0);
}

switch (menu_selection)
{
    case 0:
        if (keyboard_multicheck_pressed(vk_nokey))
            scr_loadgame();
        
        break;
    
    case 1:
        for (var i = 0; i < array_length(route_list); i++)
        {
            if (route_selection == route_list[i])
            {
                if (global.left_keyp)
                {
                    if (i > 0)
                        route_selection = route_list[i - 1];
                    else
                        route_selection = route_list[array_length(route_list) - 1];
                    
                    break;
                }
                
                if (global.right_keyp)
                {
                    if (i < (array_length(route_list) - 1))
                        route_selection = route_list[i + 1];
                    else
                        route_selection = route_list[0];
                    
                    break;
                }
            }
        }
        
        break;
    
    case 2:
        if (global.left_keyp || global.right_keyp)
        {
            if (bonus_items == true)
                bonus_items = false;
            else
                bonus_items = true;
            
            break;
        }
        
        break;
    
    case 3:
        for (var i = 0; i < array_length(follower_list); i++)
        {
            if (follower_selection == follower_list[i])
            {
                if (global.left_keyp)
                {
                    if (i > 0)
                        follower_selection = follower_list[i - 1];
                    else
                        follower_selection = follower_list[array_length(follower_list) - 1];
                    
                    break;
                }
                
                if (global.right_keyp)
                {
                    if (i < (array_length(follower_list) - 1))
                        follower_selection = follower_list[i + 1];
                    else
                        follower_selection = follower_list[0];
                    
                    break;
                }
            }
        }
        
        break;
    
    case 4:
        var hold_left = false;
        
        if (global.left_key)
        {
            hold_delay_left -= 1;
            
            if (hold_delay_left <= 0)
            {
                hold_left = true;
                hold_delay_left = hold_delay_max;
            }
        }
        else
        {
            hold_delay_left = hold_delay_max * 4;
            hold_left = false;
        }
        
        var hold_right = false;
        
        if (global.right_key)
        {
            hold_delay_right -= 1;
            
            if (hold_delay_right <= 0)
            {
                hold_right = true;
                hold_delay_right = hold_delay_max;
            }
        }
        else
        {
            hold_delay_right = hold_delay_max * 4;
            hold_right = false;
        }
        
        var room_index_current = ds_list_find_index(room_list, room_selection);
        
        for (var i = 0; i < ds_list_size(room_list); i++)
        {
            if (global.left_keyp || hold_left)
            {
                if (room_index_current > 0)
                    room_selection = ds_list_find_value(room_list, room_index_current - 1);
                else
                    room_selection = ds_list_find_value(room_list, ds_list_size(room_list) - 1);
                
                break;
            }
            
            if (global.right_keyp || hold_right)
            {
                if (room_index_current < (ds_list_size(room_list) - 1))
                    room_selection = ds_list_find_value(room_list, room_index_current + 1);
                else
                    room_selection = ds_list_find_value(room_list, 0);
                
                break;
            }
        }
        
        break;
    
    case 5:
        if (keyboard_multicheck_pressed(vk_nokey))
        {
            var world_value = 0;
            scr_initialize();
            new_room = asset_get_index(room_selection);
            xx = 320;
            yy = 240;
            global.party_member = follower_selection;
            
            switch (route_selection)
            {
                case "PACIFIST":
                    global.route = 2;
                    break;
                
                case "NEUTRAL":
                    global.route = 1;
                    break;
                
                case "GENO":
                    global.route = 1;
                    break;
            }
            
            if (bonus_items == true)
            {
                global.player_weapon = "Wild Revolver";
                global.player_armor_modifier = "Fancy Holster";
                global.player_armor_modifier_defense = script_execute(scr_determine_armor_modifier_defense);
                global.player_weapon_modifier_attack = script_execute(scr_determine_weapon_modifier_attack);
            }
            
            obj_pl.x = xx;
            obj_pl.y = yy;
            obj_pl.direction = 90;
            obj_pl.image_alpha = 1;
            room = new_room;
            
            if (global.party_member != -4)
                instance_create(obj_pl.x, obj_pl.y, global.party_member);
        }
        
        break;
    
    case 6:
        if (keyboard_multicheck_pressed(vk_nokey))
        {
            scr_initialize();
            scene = 0;
            cutscene_timer = 0;
            cutscene_battle_initiate("ceroba", "true", false);
            instance_create_depth(0, 0, -1000, obj_ceroba_debugger);
        }
        
        break;
    
    case 7:
        if (keyboard_multicheck_pressed(vk_nokey))
        {
            scr_initialize();
            scene = 0;
            cutscene_timer = 0;
            global.battle_enemy_name = "flowey";
            global.battling_boss = true;
            global.battle_start = true;
            global.sound_carry_overworld = false;
            room_goto(rm_battle_flowey);
            global.death_count[7] = 1;
            alarm[0] = 1;
            persistent = true;
            global.cutscene = true;
            obj_pl.image_alpha = 0;
            global.flag[15] = 3;
            global.dunes_flag[24] = 2;
            global.sworks_flag[20] = 3;
            global.sworks_flag[31] = 3;
            global.flag[17] = 2;
            global.dunes_flag[40] = 1;
        }
        
        if (keyboard_multicheck_pressed(vk_anykey))
        {
            scr_initialize();
            scene = 0;
            cutscene_timer = 0;
            global.battling_boss = true;
            global.battle_start = true;
            global.sound_carry_overworld = false;
            room_goto(rm_battle_flowey_phase_2);
            global.cutscene = true;
            obj_pl.image_alpha = 0;
        }
        
        break;
    
    case 8:
        if (keyboard_multicheck_pressed(vk_nokey))
        {
            scr_initialize();
            scene = 0;
            cutscene_timer = 0;
            cutscene_battle_initiate("martlet genocide final", "true", false);
            instance_create_depth(0, 0, -1000, obj_martlet_debugger);
        }
}
