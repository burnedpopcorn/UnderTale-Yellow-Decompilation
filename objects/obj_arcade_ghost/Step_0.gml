if (arc_enemy_death == false)
{
    switch (step)
    {
        case 0:
            if (wait_timer > 0)
                wait_timer--;
            else
                step = 1;
            
            break;
        
        case 1:
        case 2:
        case 3:
            if (wait_timer > 0)
            {
                wait_timer--;
            }
            else
            {
                step++;
                instance_create(x, y + 12, obj_arcade_enemy_bullet);
                wait_timer = 15;
            }
            
            break;
    }
}
else
{
    switch (step)
    {
        case 0:
            arc_enemy_hsp = 0;
            
            if (image_index >= (image_number - image_speed))
            {
                image_speed = 0;
                step++;
            }
            
            break;
        
        case 1:
            arc_enemy_hsp = 5;
            step++;
            break;
    }
}

if (!arc_enemy_hit)
    x += arc_enemy_hsp;

if (x != clamp(x, 0, 260))
    instance_destroy();
