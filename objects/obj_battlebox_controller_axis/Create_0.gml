if (live_call())
    return global.live_result;

axis_plead_count = 0;
axis_trash_meter_full = false;
axis_trash_meter_alpha = 0;
axis_trash_meter_alpha_inc = 0.1;
axis_trash_meter = 0;
axis_trash_meter_current = 0;
axis_trash_meter_pulse_alpha = 0;
axis_trash_meter_x = 557;
axis_trash_meter_y = -80;
axis_trash_meter_y_target = 20;
axis_battery_meter_x = 20;
axis_battery_meter_current = 100;
axis_hit_count_max = 8;
axis_hit_count_current = 8;
axis_shield_pulse_alpha = 0;
axis_shield_pulse_alpha_inc = 0.05;
shield_enabled = false;

if (instance_exists(obj_axis_body))
    depth = obj_axis_body.depth + 1;
