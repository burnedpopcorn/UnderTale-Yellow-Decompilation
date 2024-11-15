battle_screenshake_duration = 12;
battle_screenshake_intensity = 6;
battle_screenshake_dec = battle_screenshake_intensity / battle_screenshake_duration;
reset_screen = true;

if (instance_number(obj_screenshake_battle) == 1)
{
    view_x = camera_get_view_x(view_camera[0]);
    view_y = camera_get_view_y(view_camera[0]);
}
else
{
    reset_screen = false;
}
