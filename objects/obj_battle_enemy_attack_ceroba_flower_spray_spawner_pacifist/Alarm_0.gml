if (live_call())
    return global.live_result;

audio_play_sound(snd_enemy_bullet_shot, 1, 0);

for (var a = 0; a < array_length_1d(bullet_number); a++)
{
    for (var i = 0; i < bullet_number[a]; i++)
    {
        var bullet = instance_create(x, y, obj_battle_enemy_attack_ceroba_flower_spray_bullet);
        var bullet_arc = ((bullet_number[a] - 1) * bullet_spread) / 2;
        bullet.speed = bullet_speed[a];
        bullet.direction = (point_direction(x, y, target_x, target_y) - bullet_arc) + (i * bullet_spread);
    }
}

if (bullet_count > 0)
{
    alarm[0] = 20;
    bullet_count -= 1;
}
else
{
    fade_out = true;
}

image_xscale = 1.5;
image_yscale = 1.5;
