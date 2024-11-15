if (arc_enemy_death == false)
{
    if (step == 0)
    {
        if (y < y_destination)
            y += 1.5;
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
        sprite_index = arc_sprite_attack;
        wait_timer = 30;
        step = 3;
    }
    
    if (step == 3 && !arc_enemy_hit)
    {
        if (wait_timer > 0)
            wait_timer--;
        
        if (wait_timer == 25 || wait_timer == 15 || wait_timer == 5)
            instance_create(x, y + 16, obj_arcade_enemy_homing);
        
        if (image_index >= (image_number - image_speed))
        {
            wait_timer = 75;
            sprite_index = arc_sprite_normal;
            step = 1;
        }
    }
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
{
    instance_destroy();
    obj_arcade_controller.arcade_boss = false;
}
