var i, bullet;

for (i = 0; i < bullet_number; i++)
{
    bullet = instance_create(x, y, obj_battle_enemy_attack_ceroba_flower_spiral_bullet);
    bullet.attack_dir = (i + 1) * (360 / bullet_number);
    bullet.creator = id;
    
    if (bullet.attack_dir > 360)
        bullet.attack_dir -= 360;
}

if (bullet_number == 6)
    bullet_number = 7;
else
    bullet_number = 6;

alarm[0] = 30;

if (global.battle_phase == 2)
    alarm[0] = 20;

image_xscale = 1.5;
image_yscale = 1.5;
