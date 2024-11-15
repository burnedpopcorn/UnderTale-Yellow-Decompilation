var xx, x_offset, yy, puff_count, no_puff, i, steam;

xx = battle_box.bbox_left + 4 + 11;
x_offset = 48;
yy = battle_box.bbox_bottom + 40;
puff_count = 3;

do
    no_puff = irandom_range(0, puff_count - 1);
until (no_puff != last_puff);

last_puff = no_puff;

for (i = 0; i < puff_count; i++)
{
    if (i != no_puff)
    {
        steam = instance_create_depth(xx + (x_offset * i), yy, -100, obj_battle_enemy_attack_smoke_puff_axis);
        steam.speed_inc = steam.speed_max;
    }
}

alarm[0] = attack_interval;
