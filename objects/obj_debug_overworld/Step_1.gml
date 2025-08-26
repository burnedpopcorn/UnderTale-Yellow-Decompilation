script_execute(scr_controls_debug_overworld);

if (key_debug)
{
    if (global.debug_toggle == true)
        global.debug_toggle = false;
    else
        global.debug_toggle = true;
}

if (global.debug_toggle == true)
{
    if (key_slow || key_slow_right || !key_fast_left)
    {
        key_fast_left = 0;
        key_fast_ct_left = 0;
    }
    
    if (key_slow || key_slow_left || !key_fast_right)
    {
        key_fast_right = 0;
        key_fast_ct_right = 0;
    }
    
    if (key_fast_left)
    {
        key_fast_ct_left += 1;
        
        if (key_fast_ct_left < key_fast_ct_limit)
            key_fast_left = 0;
        else
            key_fast_ct_left = key_fast_ct_limit;
    }
    
    if (key_fast_right)
    {
        key_fast_ct_right += 1;
        
        if (key_fast_ct_right < key_fast_ct_limit)
            key_fast_right = 0;
        else
            key_fast_ct_right = key_fast_ct_limit;
    }
    
    if (key_reset)
        game_restart();
    
    if (key_fps3)
        room_speed = 3;
    else if (key_fps30)
        room_speed = 30;
    else if (key_fps60)
        room_speed = 60;
    
    if (seldepth_main == 0)
    {
        var key_vert = key_down - key_up;
        selnum_main += key_vert;
        
        if (selnum_main > selmax_main)
            selnum_main = 0;
        
        if (selnum_main < 0)
            selnum_main = selmax_main;
        
        if (key_select)
        {
            if (selnum_main == 6)
            {
                game_restart();
            }
            else
            {
                event_user(0);
                seldepth_main += 1;
            }
        }
    }
    else if (seldepth_main == 1)
    {
        if (selnum_main == 0)
        {
            var key_vert = key_down - key_up;
            selnumh_world += key_vert;
            var array_max = array_length_1d(selnuml_world) - 1;
            
            if (selnumh_world > array_max)
                selnumh_world = 0;
            
            if (selnumh_world < 0)
                selnumh_world = array_max;
            
            var key_hor = sign((key_right - key_left) + (key_fast_right - key_fast_left));
            selnuml_world[selnumh_world] += key_hor;
            array_max = array_length_2d(world_room, selnumh_world) - 1;
            
            if (selnuml_world[selnumh_world] > array_max)
                selnuml_world[selnumh_world] = 0;
            
            if (selnuml_world[selnumh_world] < 0)
                selnuml_world[selnumh_world] = array_max;
            
            if (key_select)
            {
                if (instance_exists(obj_room_special_holder))
                {
                    with (obj_room_special_holder)
                        instance_destroy();
                }
                
                instance_create(0, 0, obj_room_special_holder);
                
                with (obj_room_special_holder)
                {
                    var h = obj_debug_overworld.selnumh_world;
                    var l = obj_debug_overworld.selnuml_world[h];
                    player_x = obj_debug_overworld.world_x[h][l];
                    player_y = obj_debug_overworld.world_y[h][l];
                    player_direction = "down";
                    next_room = obj_debug_overworld.world_room[h][l];
                }
                
                with (obj_frisk)
                {
                    instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_overworld_room_special_fade_out_screen);
                    moveable = false;
                    event = true;
                }
            }
            else if (key_revert)
            {
                seldepth_main -= 1;
            }
        }
        else if (selnum_main == 1)
        {
            var key_vert = key_down - key_up;
            selnumh_enemy += key_vert;
            var array_max = array_length_1d(selnuml_enemy) - 1;
            
            if (selnumh_enemy > array_max)
                selnumh_enemy = 0;
            
            if (selnumh_enemy < 0)
                selnumh_enemy = array_max;
            
            var key_hor = sign((key_right - key_left) + (key_fast_right - key_fast_left));
            selnuml_enemy[selnumh_enemy] += key_hor;
            array_max = array_length_2d(enemy, selnumh_enemy) - 1;
            
            if (selnuml_enemy[selnumh_enemy] > array_max)
                selnuml_enemy[selnumh_enemy] = 0;
            
            if (selnuml_enemy[selnumh_enemy] < 0)
                selnuml_enemy[selnumh_enemy] = array_max;
            
            if (key_select)
            {
                var selection_enemy = enemy[selnumh_enemy][selnuml_enemy[selnumh_enemy]];
                
                if (selection_enemy == "dalv normal")
                {
                    global.route = 1;
                    global.melancholy[1] = false;
                    global.battle_enemy_name = "dalv";
                }
                else if (selection_enemy == "dalv melancholy")
                {
                    global.melancholy[1] = true;
                    global.battle_enemy_name = "dalv";
                }
                else if (selection_enemy == "dalv genocide")
                {
                    global.route = 3;
                    global.battle_enemy_name = "dalv";
                }
                else
                {
                    global.battle_enemy_name = selection_enemy;
                }
                
                switch (global.battle_enemy_name)
                {
                    case "froggit intro":
                    case "flowey intro":
                    case "decibat":
                    case "micro froggit":
                    case "dalv":
                    case "martlet pacifist":
                    case "martlet genocide":
                    case "shufflers":
                    case "el bailador":
                    case "dummy training pacifist":
                        global.exclamation_mark_type = "nothing";
                        global.battling_enemy = false;
                        global.battling_boss = true;
                        global.battle_start = true;
                        break;
                    
                    default:
                        global.exclamation_mark_type = "normal";
                        global.battling_enemy = true;
                        global.battling_boss = false;
                        global.battle_start = true;
                }
            }
            else if (key_revert)
            {
                seldepth_main -= 1;
            }
        }
        else if (selnum_main == 2)
        {
            var key_vert = key_down - key_up;
            selnumh_shop += key_vert;
            var array_max = array_length_1d(selnuml_shop) - 1;
            
            if (selnumh_shop > array_max)
                selnumh_shop = 0;
            
            if (selnumh_shop < 0)
                selnumh_shop = array_max;
            
            var key_hor = sign((key_right - key_left) + (key_fast_right - key_fast_left));
            selnuml_shop[selnumh_shop] += key_hor;
            array_max = array_length_2d(shop, selnumh_shop) - 1;
            
            if (selnuml_shop[selnumh_shop] > array_max)
                selnuml_shop[selnumh_shop] = 0;
            
            if (selnuml_shop[selnumh_shop] < 0)
                selnuml_shop[selnumh_shop] = array_max;
            
            if (key_select)
            {
                global.shop_name = shop[selnumh_shop][selnuml_shop[selnumh_shop]];
                
                switch (global.shop_name)
                {
                    case "Honeydew Resort Normal":
                        global.sound_carry_overworld = true;
                        break;
                }
                
                instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_overworld_shop_fade_out_screen);
                
                with (obj_frisk)
                {
                    moveable = false;
                    event = true;
                }
            }
            else if (key_revert)
            {
                seldepth_main -= 1;
            }
        }
        else if (selnum_main == 3)
        {
            var key_vert = key_down - key_up;
            selnumh_item += key_vert;
            var array_max = array_length_1d(selnuml_item) - 1;
            
            if (selnumh_item > array_max)
                selnumh_item = 0;
            
            if (selnumh_item < 0)
                selnumh_item = array_max;
            
            var key_hor = sign((key_right - key_left) + (key_fast_right - key_fast_left));
            selnuml_item[selnumh_item] += key_hor;
            array_max = array_length_2d(item, selnumh_item) - 1;
            
            if (selnuml_item[selnumh_item] > array_max)
                selnuml_item[selnumh_item] = 0;
            
            if (selnuml_item[selnumh_item] < 0)
                selnuml_item[selnumh_item] = array_max;
            
            if (key_select)
            {
                global.item_hold_take = item[selnumh_item][selnuml_item[selnumh_item]];
                script_execute(scr_item_take_check);
                
                if (can_take == true)
                    audio_play_sound(snd_shop_purchase, 20, false);
                else
                    audio_play_sound(snd_hurt, 20, false);
            }
            else if (key_revert)
            {
                seldepth_main -= 1;
            }
        }
        else if (selnum_main == 4)
        {
            var key_vert = key_down - key_up;
            selnumh_equip += key_vert;
            var array_max = array_length_1d(selnuml_equip) - 1;
            
            if (selnumh_equip > array_max)
                selnumh_equip = 0;
            
            if (selnumh_equip < 0)
                selnumh_equip = array_max;
            
            var key_hor = sign((key_right - key_left) + (key_fast_right - key_fast_left));
            selnuml_equip[selnumh_equip] += key_hor;
            array_max = array_length_2d(item, selnumh_equip + equip_disjoint) - 1;
            
            if (selnuml_equip[selnumh_equip] > array_max)
                selnuml_equip[selnumh_equip] = 0;
            
            if (selnuml_equip[selnumh_equip] < 0)
                selnuml_equip[selnumh_equip] = array_max;
            
            if (key_select)
            {
                if (selnumh_equip == 0)
                {
                    global.player_weapon = item[selnumh_equip + equip_disjoint][selnuml_equip[selnumh_equip]];
                    global.player_weapon_attack = script_execute(scr_determine_weapon_attack);
                }
                else if (selnumh_equip == 1)
                {
                    global.player_armor = item[selnumh_equip + equip_disjoint][selnuml_equip[selnumh_equip]];
                    global.player_armor_defense = script_execute(scr_determine_armor_defense);
                }
                else if (selnumh_equip == 2)
                {
                    global.player_weapon_modifier = item[selnumh_equip + equip_disjoint][selnuml_equip[selnumh_equip]];
                    global.player_weapon_modifier_attack = script_execute(scr_determine_weapon_modifier_attack);
                }
                else if (selnumh_equip == 3)
                {
                    global.player_armor_modifier = item[selnumh_equip + equip_disjoint][selnuml_equip[selnumh_equip]];
                    global.player_armor_modifier_defense = script_execute(scr_determine_armor_modifier_defense);
                }
                
                audio_play_sound(snd_battle_item_equip, 20, false);
            }
            else if (key_revert)
            {
                seldepth_main -= 1;
            }
        }
        else if (selnum_main == 5)
        {
            var key_vert = key_down - key_up;
            selnumh_stat += key_vert;
            var array_max = array_length_1d(selnuml_stat) - 1;
            
            if (selnumh_stat > array_max)
                selnumh_stat = 0;
            
            if (selnumh_stat < 0)
                selnumh_stat = array_max;
            
            var key_hor = sign((key_right - key_left) + (key_fast_right - key_fast_left));
            selnuml_stat[selnumh_stat] += key_hor;
            var array_min = stat[selnumh_stat][0];
            array_max = stat[selnumh_stat][1];
            
            if (selnuml_stat[selnumh_stat] > array_max)
                selnuml_stat[selnumh_stat] = array_min;
            
            if (selnuml_stat[selnumh_stat] < array_min)
                selnuml_stat[selnumh_stat] = array_max;
            
            if (key_select)
            {
                var h = selnumh_stat;
                var l = selnuml_stat[h];
                
                if (h == 0)
                {
                    global.player_level = l;
                    global.max_hp_self = global.player_hp_next[l];
                    global.current_hp_self = global.max_hp_self;
                    global.player_attack = global.player_attack_next[l];
                    global.player_defense = global.player_defense_next[l];
                    
                    if (global.player_level == 1)
                        global.player_exp = 0;
                    else
                        global.player_exp = global.player_exp_next[l - 1];
                    
                    stat[2][1] = global.max_hp_self;
                    selnuml_stat[2] = global.current_hp_self;
                    audio_play_sound(snd_love_increased, 20, false);
                }
                else if (h == 1)
                {
                    global.player_gold = l;
                    audio_play_sound(snd_battle_item_weapon_select, 20, false);
                }
                else if (h == 2)
                {
                    global.current_hp_self = l;
                    audio_play_sound(snd_battle_item_eat, 20, false);
                }
                else if (h == 3)
                {
                    global.current_pp_self = l;
                    audio_play_sound(snd_battle_item_eat, 20, false);
                }
                else if (h == 4)
                {
                    global.current_sp_self = l;
                    audio_play_sound(snd_battle_item_eat, 20, false);
                }
            }
            else if (key_revert)
            {
                seldepth_main -= 1;
            }
        }
    }
}
