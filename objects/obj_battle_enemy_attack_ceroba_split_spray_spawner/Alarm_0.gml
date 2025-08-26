audio_play_sound(snd_enemy_bullet_shot, 1, 0);
var bullet = instance_create(x, y, obj_battle_enemy_attack_ceroba_flower_spray_bullet);
bullet.speed = bullet_speed;
bullet.direction = point_direction(x, y, 320, 320) + bullet_spread;

if (bullet_spread_inc == true)
{
    if (bullet_spread < bullet_spread_max)
    {
        bullet_spread += bullet_spread_amount;
    }
    else
    {
        bullet_spread_inc = false;
        bullet_spread -= (bullet_spread_amount / 2);
    }
}
else if (bullet_spread > (-bullet_spread_max - (bullet_spread_amount / 2)))
{
    bullet_spread -= bullet_spread_amount;
}
else
{
    bullet_spread_inc = true;
    bullet_spread += (bullet_spread_amount / 2);
}

alarm[0] = 2;
image_xscale = 1.5;
image_yscale = 1.5;
