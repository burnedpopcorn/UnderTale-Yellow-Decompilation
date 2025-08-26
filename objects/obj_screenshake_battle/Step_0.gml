var camera = view_camera[0];
camera_set_view_pos(camera, 0, 0);
battle_screenshake_duration -= 1;

if (battle_screenshake_duration <= 0)
{
    instance_destroy();
    exit;
}

camera_set_view_pos(camera, view_x + choose(battle_screenshake_intensity, -battle_screenshake_intensity), view_y + choose(battle_screenshake_intensity, -battle_screenshake_intensity));
battle_screenshake_intensity -= battle_screenshake_dec;
