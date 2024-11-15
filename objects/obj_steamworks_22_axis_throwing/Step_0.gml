if (!instance_exists(obj_pl))
    exit;

if (state == "idle")
{
    if (sprite_index != spr_axis_down)
    {
        sprite_index = spr_axis_down;
        image_speed = 0.2;
        image_index = 0;
    }
}

if (state == "throw")
{
    if (global.cutscene == true)
    {
        state = "idle";
        image_speed = 0;
        exit;
    }
    
    if (sprite_index != spr_steamworks_axis_throw)
    {
        sprite_index = spr_steamworks_axis_throw;
        image_speed = 1;
        image_index = 0;
    }
    else if (image_index >= 6 && ball_spawn_noloop == false)
    {
        ball_spawn_noloop = true;
        instance_create_depth(x, y - 16, -240, obj_steamworks_22_energy_ball);
    }
    else if (image_index >= (image_number - 1))
    {
        state = "idle";
        image_speed = 0;
        ball_spawn_noloop = false;
        alarm[0] = throw_interval;
    }
}

if (abs(x - obj_pl.x) > 15)
    x = lerp(x, clamp(obj_pl.x, 0, 1860), 0.1);

player_x_last = obj_pl.x;

if (x < 470 && instance_exists(obj_player_npc))
    instance_destroy();
