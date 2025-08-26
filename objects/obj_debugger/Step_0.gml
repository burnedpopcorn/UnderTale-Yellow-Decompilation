if (live_call())
    return global.live_result;

if (show_timer)
    scr_determine_playtime();

var dbg_soundtest = mouse_check_button_pressed(mb_left);

if (dbg_soundtest)
    audio_play_sound(snd_monster_damage_death, 1, 0);

var dbg_up = keyboard_check_pressed(ord("W"));
var dbg_down = keyboard_check_pressed(ord("S"));
var dbg_right = keyboard_check_pressed(ord("D"));
var dbg_left = keyboard_check_pressed(ord("A"));
var dbg_conf = keyboard_check_pressed(ord("E"));
var dbg_canc = keyboard_check_pressed(ord("Q"));
var dbg_time = keyboard_check_pressed(ord("M"));

if (dbg_up && !alarm[0])
    alarm[0] = 5;
else
    dbg_up = false;

if (dbg_down && !alarm[1])
    alarm[1] = 5;
else
    dbg_down = false;

if (dbg_time)
{
    if (show_timer == false)
        show_timer = true;
    else
        show_timer = false;
}

switch (dbg_menu)
{
    case 0:
        if (dbg_down)
        {
            if (dbg_pos < 5)
                dbg_pos += 1;
            else
                dbg_pos = 1;
        }
        
        if (dbg_up)
        {
            if (dbg_pos > 1)
                dbg_pos -= 1;
            else
                dbg_pos = 5;
        }
        
        if (dbg_conf)
        {
            if (dbg_pos == 5)
            {
                var code_string = get_string("Enter code:", "") + "; return 1";
                show_debug_message("code_string: " + code_string);
                
                if (live_execute_string(code_string))
                    show_debug_message("Result: " + string(global.live_result));
                else
                    show_debug_message("Error: " + string(global.live_result));
                
                exit;
            }
            else
            {
                dbg_menu = dbg_pos;
                dbg_pos = 1;
            }
        }
        
        if (dbg_canc)
            instance_destroy();
        
        break;
    
    case 1:
        if (dbg_down)
        {
            if (dbg_pos < dbg_room_count)
                dbg_pos += 1;
            else
                dbg_pos = 0;
        }
        
        if (dbg_up)
        {
            if (dbg_pos > 0)
                dbg_pos -= 1;
            else
                dbg_pos = dbg_room_count;
        }
        
        if (dbg_right)
        {
            if (dbg_pos < dbg_room_count)
                dbg_pos += 5;
            else
                dbg_pos = 0;
        }
        
        if (dbg_left)
        {
            if (dbg_pos > 0)
                dbg_pos -= 5;
            else
                dbg_pos = dbg_room_count;
        }
        
        if (dbg_conf)
            room_goto(asset_get_index(ds_list_find_value(room_list, dbg_pos)));
        
        if (dbg_canc)
        {
            dbg_pos = 1;
            dbg_menu = 0;
        }
        
        break;
    
    case 2:
        if (dbg_down)
        {
            if (dbg_pos < 4)
                dbg_pos += 1;
            else
                dbg_pos = 1;
        }
        
        if (dbg_up)
        {
            if (dbg_pos > 1)
                dbg_pos -= 1;
            else
                dbg_pos = 4;
        }
        
        if (dbg_right)
        {
            if (dbg_pos == 3)
            {
                if (dbg_enemy_current < (array_length_1d(dbg_battle_enemy_name) - 1))
                    dbg_enemy_current++;
                else
                    dbg_enemy_current = 0;
            }
            
            if (dbg_pos == 4)
            {
                if (dbg_boss_current < (array_length_1d(dbg_battle_boss_name) - 1))
                    dbg_boss_current++;
                else
                    dbg_boss_current = 0;
            }
        }
        
        if (dbg_left)
        {
            if (dbg_pos == 3)
            {
                if (dbg_enemy_current > 0)
                    dbg_enemy_current--;
                else
                    dbg_enemy_current = array_length_1d(dbg_battle_enemy_name) - 1;
            }
            
            if (dbg_pos == 4)
            {
                if (dbg_boss_current > 0)
                    dbg_boss_current--;
                else
                    dbg_boss_current = array_length_1d(dbg_battle_boss_name) - 1;
            }
        }
        
        if (dbg_conf)
        {
            if (dbg_pos == 1)
            {
                if (global.player_level >= 19)
                    exit;
                
                global.player_level += 1;
                global.max_hp_self = global.player_hp_next[global.player_level];
                global.current_hp_self = global.max_hp_self;
                global.player_attack = global.player_attack_next[global.player_level];
                global.player_defense = global.player_defense_next[global.player_level];
            }
            
            if (dbg_pos == 2)
            {
                global.player_level = 1;
                global.max_hp_self = 20;
                global.current_hp_self = global.max_hp_self;
                global.player_attack = global.player_attack_next[1];
                global.player_defense = global.player_defense_next[1];
            }
            
            if (dbg_pos == 3)
            {
                instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
                global.battle_enemy_name = dbg_battle_enemy_name[dbg_enemy_current];
                global.current_room_overworld = room_get_name(room);
                global.battling_boss = false;
                global.battle_start = true;
                instance_destroy();
            }
            
            if (dbg_pos == 4)
            {
                instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
                global.battle_enemy_name = dbg_battle_boss_name[dbg_boss_current];
                global.current_room_overworld = room_get_name(room);
                global.battling_enemy = false;
                global.battling_boss = true;
                global.battle_start = true;
                instance_destroy();
            }
        }
        
        if (dbg_canc)
        {
            dbg_pos = 1;
            dbg_menu = 0;
        }
        
        break;
    
    case 3:
        if (dbg_down)
        {
            if (dbg_pos < (ds_map_size(cheat_map) - 1))
                dbg_pos += 1;
            else
                dbg_pos = 0;
        }
        
        if (dbg_up)
        {
            if (dbg_pos > 0)
                dbg_pos -= 1;
            else
                dbg_pos = ds_map_size(cheat_map) - 1;
        }
        
        if (dbg_canc)
        {
            dbg_pos = 1;
            dbg_menu = 0;
        }
        
        var current_value = ds_map_find_value(cheat_map, dbg_pos);
        
        switch (dbg_pos)
        {
            case 0:
                if (dbg_left)
                {
                    if (current_value > 0.5)
                        ds_map_replace(cheat_map, dbg_pos, current_value - 0.5);
                    else
                        ds_map_replace(cheat_map, dbg_pos, 6);
                }
                else if (dbg_right)
                {
                    if (current_value < 4)
                        ds_map_replace(cheat_map, dbg_pos, current_value + 0.5);
                    else
                        ds_map_replace(cheat_map, dbg_pos, 0.5);
                }
                else if (dbg_conf)
                {
                    room_speed = current_value * 30;
                }
                
                break;
            
            case 1:
                if (dbg_left || dbg_right)
                {
                    if (current_value == 1)
                        ds_map_replace(cheat_map, dbg_pos, 0);
                    else
                        ds_map_replace(cheat_map, dbg_pos, 1);
                }
                
                if (dbg_conf)
                {
                    if (current_value == 1)
                    {
                        global.current_hp_self = 9999;
                        global.max_hp_self = 9999;
                    }
                    else if (current_value == 2)
                    {
                        global.max_hp_self = global.player_hp_next[global.player_level];
                        global.current_hp_self = global.max_hp_self;
                    }
                }
                
                break;
            
            case 2:
                if (dbg_left || dbg_right)
                {
                    if (current_value == 1)
                        ds_map_replace(cheat_map, dbg_pos, 0);
                    else
                        ds_map_replace(cheat_map, dbg_pos, 1);
                }
                
                if (dbg_conf)
                {
                    if (current_value == 1)
                        global.debug_move = true;
                    else if (current_value == 0)
                        global.debug_move = false;
                }
                
                break;
            
            case 3:
                if (dbg_right)
                {
                    if (current_value < 9999)
                        ds_map_replace(cheat_map, dbg_pos, current_value + 1);
                }
                else if (dbg_left)
                {
                    if (current_value > 0)
                        ds_map_replace(cheat_map, dbg_pos, current_value - 1);
                }
                else if (dbg_conf)
                {
                    audio_play_sound(snd_success, 1, 0);
                    global.player_gold += current_value;
                }
                
                break;
            
            case 4:
                if (dbg_conf)
                {
                    scr_item("Golden Scarf");
                    scr_item("Super Ammo");
                }
                
                break;
            
            case 5:
                if (dbg_right)
                {
                    if (global.route < 3)
                        ds_map_replace(cheat_map, dbg_pos, current_value + 1);
                }
                else if (dbg_left)
                {
                    if (global.route > 1)
                        ds_map_replace(cheat_map, dbg_pos, current_value - 1);
                }
                else if (dbg_conf)
                {
                    audio_play_sound(snd_confirm, 1, 0);
                    global.route = current_value;
                }
                
                break;
            
            case 6:
                if (dbg_conf)
                {
                    if (!kanako_time)
                    {
                        kanako_time = true;
                    }
                    else
                    {
                        kanako_time = false;
                        global.player_sprites = "normal";
                    }
                }
                
                break;
            
            case 7:
                if (dbg_conf)
                {
                    if (!instance_exists(obj_debug_skipper))
                    {
                        instance_create(0, 0, obj_debug_skipper);
                    }
                    else
                    {
                        room_speed = 30;
                        instance_destroy(obj_debug_skipper);
                    }
                }
                
                break;
        }
        
        break;
    
    case 4:
        game_restart();
        break;
}

if (no_encounters)
{
    if (instance_exists(obj_rndenc))
        instance_destroy(obj_rndenc);
    
    if (instance_exists(obj_scriptedencounters))
        instance_destroy();
}

if (sixty_fps)
{
    if (room_speed < 180)
        room_speed += 15;
    else
        room_speed = 30;
    
    sixty_fps = false;
}

if (kanako_time == true)
    global.player_sprites = "kanako";

if (mouse_check_button_pressed(mb_left))
{
    obj_pl.x = mouse_x;
    obj_pl.y = mouse_y;
}

if (mouse_check_button_pressed(mb_right))
{
    var inst = instance_position(mouse_x, mouse_y, all);
    show_debug_message(object_get_name(inst.object_index));
}
