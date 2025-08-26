if (shadow_id == -4)
    shadow_id = instance_create(x, y_target + (sprite_height / 2), obj_dunes_boulders_shadow);

var shadow_index = 1 - ((y - y_target) / (y_target - 300 - y_target));
shadow_id.image_xscale = shadow_index;
shadow_id.image_yscale = shadow_index;
y += fall_speed;
fall_speed += 0.2;
fall_speed = clamp(fall_speed, 0, 12);

if (y > y_target)
{
    if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
    {
        var break_sound = audio_play_sound(snd_rock_break, 1, 0);
        audio_sound_gain(break_sound, 0.7, 0);
        
        if (!instance_exists(obj_screenshake_player))
        {
            var screenshake = instance_create(obj_pl.x, obj_pl.y, obj_screenshake_player);
            
            with (screenshake)
            {
                alarm[0] = 10;
                intensity = 1;
            }
        }
        else
        {
            obj_screenshake_player.alarm[0] = 10;
        }
        
        for (var i = 4; i >= 0; i--)
            instance_create(x, y, obj_dunes_small_boulders);
    }
    
    if (place_meeting(x, y, obj_pl))
    {
        global.battle_enemy_name = "boulders minifight";
        global.battling_enemy = true;
        global.battling_boss = false;
        global.sound_carry_overworld = true;
        
        if (room != rm_death_screen)
            global.current_room_overworld = room_get_name(room);
        
        global.battle_start = true;
        
        if (!instance_exists(obj_heart_initiate_battle_quick))
            instance_create(x, y, obj_heart_initiate_battle_quick);
    }
    
    instance_destroy();
    instance_destroy(shadow_id);
}
