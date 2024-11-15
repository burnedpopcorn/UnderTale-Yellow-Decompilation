var i, bullet, spin_side_old;

for (i = 0; i < bullet_number; i++)
{
    bullet = instance_create(x, y, obj_battle_enemy_attack_ceroba_flower_spray_vortex_bullet);
    bullet.attack_dir = direction + ((i + 1) * (360 / bullet_number));
    bullet.creator = id;
    
    if (bullet.attack_dir > 360)
        bullet.attack_dir -= 360;
    
    if (spin_side == -1)
        bullet.bullet_speed *= -1;
}

alarm[0] = 8;
image_xscale = 1.5;
image_yscale = 1.5;

if (spin_side == 1)
    direction += 20;
else
    direction -= 20;

spin_side_delay += 1;

if (spin_side_delay == 10)
{
    spin_side_old = spin_side;
    spin_side = choose(-1, 1);
    
    if (spin_side != spin_side_old)
    {
        with (obj_battle_enemy_attack_ceroba_flower_spray_vortex_bullet)
        {
            obj_battle_enemy_attack_ceroba_flower_spray_vortex_bullet.alarm[1] = 2;
            obj_battle_enemy_attack_ceroba_flower_spray_vortex_bullet.image_blend = c_red;
        }
        
        audio_play_sound(snd_bullet_warning, 1, 0);
    }
    
    spin_side_delay = 0;
}
