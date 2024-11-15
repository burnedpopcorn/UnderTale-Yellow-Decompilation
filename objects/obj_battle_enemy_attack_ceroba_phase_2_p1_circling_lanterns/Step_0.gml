var i, bullet, shield_perc;

if (live_call())
    return global.live_result;

for (i = 0; i < bullet_number_max; i++)
{
    if (timer == floor(i * (360 / bullet_number_max / bullet_speed)))
    {
        bullet = instance_create_depth(battle_box.x, battle_box.y - bullet_distance, -1100, obj_ceroba_phase_2_p1_circling_lantern);
        bullet.bullet_speed = bullet_speed;
        bullet.attack_dir = attack_dir;
        bullet.bullet_spawner = id;
        bullet.attack_distance = bullet_distance;
        bullet_number_current += 1;
    }
}

timer += 1;

if (instance_exists(obj_ceroba_phase_2_shield))
{
    shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc >= 1)
    {
        instance_destroy();
        exit;
    }
}
