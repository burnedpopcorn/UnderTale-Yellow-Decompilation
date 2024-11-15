var i, bul;

instance_destroy();

for (i = 1; i <= 8; i++)
{
    bul = instance_create(x, y, obj_arcade_enemy_bullet);
    bul.direction = 45 * i;
    bul.speed = 2;
}
