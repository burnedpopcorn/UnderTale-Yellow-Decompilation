if (live_call())
    return global.live_result;

if (place_meeting(x, y, obj_pl) && steam_active && obj_pl.state == scr_normal_state)
{
    if (collision_counter > 0)
    {
        collision_counter -= 1;
    }
    else
    {
        obj_pl.state = scr_frozen_state;
        collision_counter = collision_counter_max;
        global.battle_enemy_name = "steam minifight";
        global.battling_enemy = true;
        global.battling_boss = false;
        global.sound_carry_overworld = true;
        
        if (room != rm_death_screen)
            global.current_room_overworld = room_get_name(room);
        
        global.battle_start = true;
        
        if (!instance_exists(obj_heart_initiate_battle_quick))
            instance_create(x, y, obj_heart_initiate_battle_quick);
    }
}
else
{
    collision_counter = collision_counter_max;
}

if (draw_overlay == true)
    draw_alpha = lerp(draw_alpha, draw_alpha_target, 0.1);
else
    draw_alpha = lerp(draw_alpha, 0, 0.1);

depth = 100;
