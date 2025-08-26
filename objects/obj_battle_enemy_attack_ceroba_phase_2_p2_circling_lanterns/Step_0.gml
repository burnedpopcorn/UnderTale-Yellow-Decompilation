if (live_call())
    return global.live_result;

if (!scr_battle_box_resize_midfight(128, 128))
    exit;

for (var i = 0; i < bullet_number_max; i++)
{
    if (timer == floor(i * (360 / bullet_number_max / bullet_speed)))
    {
        var bullet = instance_create_depth(battle_box.x, battle_box.y - bullet_distance, -1100, obj_ceroba_phase_2_p1_circling_lantern);
        bullet.bullet_speed = bullet_speed;
        bullet.attack_dir = attack_dir;
        bullet.bullet_spawner = id;
        bullet.attack_distance = bullet_distance;
        bullet_number_current += 1;
    }
}

timer += 1;
