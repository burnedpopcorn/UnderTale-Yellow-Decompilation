var battery_level_target;

if (live_call())
    return global.live_result;

if (instance_exists(obj_dialogue_box_battle_transformation_any))
{
    axis_trash_meter_y = lerp(axis_trash_meter_y, axis_trash_meter_y_target, 0.2);
}
else
{
    axis_trash_meter_y = lerp(axis_trash_meter_y, -80, 0.2);
    axis_trash_meter_pulse_alpha = 0;
}

axis_trash_meter_current = lerp(axis_trash_meter_current, axis_trash_meter, 0.2);

if (axis_trash_meter_current > 99.99)
{
    axis_trash_meter_current = 100;
    
    if (axis_trash_meter_full == false)
    {
        audio_play_sound(snd_axis_trash_meter_full, 1, 0);
        axis_trash_meter_pulse_alpha = 1;
        axis_trash_meter_alpha_inc = -0.1;
        axis_trash_meter_full = true;
    }
}
else
{
    axis_trash_meter_full = false;
}

if (axis_trash_meter_current < 0.01)
    axis_trash_meter_current = 0;

battery_level_target = 100 * (axis_hit_count_current / axis_hit_count_max);
axis_battery_meter_current = lerp(axis_battery_meter_current, battery_level_target, 0.15);

if (axis_trash_meter_full)
{
    axis_trash_meter_pulse_alpha += axis_trash_meter_alpha_inc;
    
    if (axis_trash_meter_pulse_alpha >= 1 || axis_trash_meter_pulse_alpha <= 0)
        axis_trash_meter_alpha_inc *= -1;
}

if (instance_exists(obj_battle_enemy_axis_generator))
    shield_enabled = true;

if (shield_enabled)
{
    if (!instance_exists(obj_battle_enemy_axis_generator))
    {
        shield_enabled = false;
    }
    else
    {
        axis_shield_pulse_alpha += axis_shield_pulse_alpha_inc;
        
        if ((axis_shield_pulse_alpha >= 1 && axis_shield_pulse_alpha_inc > 0) || (axis_shield_pulse_alpha <= 0.2 && axis_shield_pulse_alpha_inc < 0))
            axis_shield_pulse_alpha_inc *= -1;
    }
}
