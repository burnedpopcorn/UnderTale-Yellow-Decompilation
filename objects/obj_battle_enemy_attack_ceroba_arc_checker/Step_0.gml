var counter_timer_max, dir_inc, i, dir_current, xx, yy, new_bullet;

counter_timer_max = -1;

switch (counter_current)
{
    case 0:
        dir_inc = 180 / bullet_spawn_number;
        
        for (i = bullet_spawn_number; i > 0; i--)
        {
            dir_current = (bullet_spawn_direction - 180) + (dir_inc * i);
            xx = 320 + lengthdir_x(bullet_spawn_distance, dir_current);
            yy = 320 + lengthdir_y(bullet_spawn_distance, dir_current);
            new_bullet = instance_create(xx, yy, obj_battle_enemy_attack_ceroba_arc_diamond);
            new_bullet.bullet_distance = bullet_spawn_distance;
            new_bullet.bullet_dir_current = dir_current;
        }
        
        counter_current++;
        break;
    
    case 1:
        counter_timer_max = 300;
        break;
    
    case 2:
        instance_destroy();
        break;
}

if (counter_timer == -1 && counter_timer_max != -1)
    counter_timer = counter_timer_max;

if (counter_timer > 0)
{
    counter_timer--;
}
else if (counter_timer != -1)
{
    counter_timer = -1;
    counter_current += 1;
}

with (obj_battle_enemy_attack_ceroba_arc_diamond)
{
    if (image_alpha >= 1)
    {
        part_emitter_region(other.part_diamond_sys, other.part_diamond_em, x, x, y, y, 0, 0);
        part_emitter_burst(other.part_diamond_sys, other.part_diamond_em, other.part_diamond_trail, 1);
    }
}
