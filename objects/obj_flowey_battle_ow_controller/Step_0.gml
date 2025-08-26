if (live_call())
    return global.live_result;

if (overlay_alpha > 0)
    overlay_alpha -= 0.1;

if (spawn_vines == true)
{
    gui_fade_out = false;
    var _play_sound = true;
    attack_offset--;
    
    if (attack_offset <= 0)
    {
        attack_offset = attack_offset_max + attack_delay;
        audio_play_sound(snd_undertale_appear, 1, 0);
        var xdist = irandom_range(20, 60);
        var xx;
        
        do
        {
            xx = obj_pl.x + (xdist * sign(obj_pl.x - obj_pl.xprevious));
            xdist -= 10;
        }
        until (place_free(xx, obj_pl.y + 15) || x_dist <= 0);
        
        var ydist = irandom_range(20, 60);
        var yy;
        
        do
        {
            yy = obj_pl.y + 15 + (ydist * sign(obj_pl.y - obj_pl.yprevious));
            ydist -= 10;
        }
        until (place_free(yy, obj_pl.x) || y_dist <= 0);
        
        xx = floor(xx / 20) * 20;
        yy = floor(yy / 20) * 20;
        var grid_size = 5;
        var grid_squared = grid_size * grid_size;
        var start_point_x = xx - (grid_size * 20 * 0.5);
        var start_point_y = yy - (grid_size * 20 * 0.5);
        show_debug_message(start_point_x);
        var excluded_count = irandom_range(floor(grid_squared * 0.35), floor(grid_squared * 0.75));
        exclude_list = ds_list_create();
        
        for (var a = 0; a < excluded_count; a++)
        {
            var new_number;
            
            do
                new_number = irandom_range(0, grid_size * grid_size);
            until (ds_list_find_index(exclude_list, new_number) == -1);
            
            ds_list_add(exclude_list, new_number);
        }
        
        var current_spawn = 0;
        var can_play_sound = true;
        
        for (var j = 0; j < grid_size; j++)
        {
            for (var i = 0; i < grid_size; i++)
            {
                var new_x = start_point_x + (i * 20);
                var new_y = start_point_y + (j * 20);
                
                if (ds_list_find_index(exclude_list, current_spawn) == -1 && !instance_position(new_x, new_y, obj_wall))
                {
                    var new_vine = instance_create_depth(new_x, new_y, 0, obj_flowey_battle_ow_vine_warning);
                    new_vine.play_sound = can_play_sound;
                    new_vine.alarm[0] = attack_delay;
                    can_play_sound = false;
                }
                
                current_spawn += 1;
            }
        }
        
        ds_list_clear(exclude_list);
        ds_list_destroy(exclude_list);
    }
    
    with (obj_pl)
    {
        var col_vine = instance_place(x, y, obj_flowey_battle_ow_vine);
        
        if (col_vine != -4 && col_vine.image_alpha >= 0.5 && other.player_vulnerable)
        {
            other.player_hurt = true;
            other.player_vulnerable = false;
        }
        
        if (instance_exists(obj_flowey_battle_ow_determination))
        {
            if (point_distance(x, y, obj_flowey_battle_ow_determination.x, obj_flowey_battle_ow_determination.y) < 120)
                other.spawn_vines = false;
        }
    }
}
else
{
    gui_fade_out = true;
}

var damage = (global.enemy_attack_stat - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;

if (player_hurt == true)
{
    player_hurt = false;
    player_alpha = 0.5;
    audio_play_sound(snd_hurt, 20, false);
    scr_screenshake(12, 6);
    global.current_hp_self -= damage;
    alarm[0] = global.invulnerability_self;
    alarm[1] = 5;
}

if (other.player_vulnerable == true)
{
    player_alpha = 1;
    alarm[1] = -1;
}

if (global.current_hp_self < 0)
    global.current_hp_self = 0;

if (global.current_hp_self == 0)
{
    global.heart_battle_fighting_x = (obj_pl.x - camera_get_view_x(view_camera[0])) * 2;
    global.heart_battle_fighting_y = (obj_pl.y - camera_get_view_y(view_camera[0])) * 2;
    
    with (obj_battle_generator)
        audio_extend = false;
    
    audio_stop_all();
    room_goto(rm_death_screen);
    global.cutscene = true;
    obj_pl.image_alpha = 0;
}

depth = obj_pl.depth - 1;

if (instance_exists(obj_player_npc))
    obj_player_npc.image_alpha = 0;

if (gui_fade_out == true)
{
    if (gui_alpha > 0)
        gui_alpha -= 0.1;
}
else if (gui_alpha < 1)
{
    gui_alpha += 0.1;
}
