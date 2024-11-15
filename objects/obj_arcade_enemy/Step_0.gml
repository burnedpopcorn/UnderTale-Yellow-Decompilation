var bul1, bul2, bul3;

if (arc_enemy_death == false)
{
    if (step == 0)
    {
        if (y < y_destination)
            y += 2;
        else
            step = 1;
    }
    
    if (step == 1)
    {
        if (wait_timer > 0)
            wait_timer--;
        else
            step = 2;
    }
    
    if (step == 2)
    {
        bul1 = instance_create(x, y + 12, obj_arcade_enemy_bullet);
        bul2 = instance_create(x - 2, y + 12, obj_arcade_enemy_bullet);
        bul3 = instance_create(x + 2, y + 12, obj_arcade_enemy_bullet);
        
        with (bul1)
            direction = 270;
        
        with (bul2)
            direction = 315;
        
        with (bul3)
            direction = 225;
        
        step = 3;
    }
    
    if (step == 3 && !arc_enemy_hit)
        x += arc_enemy_hsp;
}
else
{
    if (step == 0)
    {
        if (image_index >= (image_number - image_speed))
        {
            image_speed = 0;
            arc_enemy_hsp = 5;
            step++;
        }
    }
    
    if (step == 1)
        x += arc_enemy_hsp;
}

if (x != clamp(x, 0, 260))
    instance_destroy();
