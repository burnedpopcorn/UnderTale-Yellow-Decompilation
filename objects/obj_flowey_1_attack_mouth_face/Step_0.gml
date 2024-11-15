var alt_bullet_speed, pellet_gap_size, pellet_number, pellet_destroy, spread_amount, i, new_pellet;

if (live_call())
    return global.live_result;

if (scene == 1)
{
    if (image_index >= (image_number - 1))
    {
        image_index = 0;
        sprite_index = spr_flowey1_attack_mouth_face_2;
        scene = 2;
    }
}

alt_bullet_speed = 3;

if (scene == 2)
{
    pellet_gap_size = 1;
    pellet_number = 8;
    pellet_destroy = irandom_range(2, pellet_number - pellet_gap_size - 1);
    spread_amount = 40;
    
    if (floor(image_index) == 0 && !pellet_spawn_noloop)
    {
        for (i = 0; i < pellet_number; i++)
        {
            if (i < pellet_destroy || i > (pellet_destroy + (pellet_gap_size - 1)))
            {
                new_pellet = instance_create_depth(x, y, depth - 1, obj_flowey_1_attack_pellets);
                
                with (new_pellet)
                    direction = (270 - (spread_amount * 0.5)) + (i * (spread_amount / (pellet_number - 1)));
            }
        }
        
        pellet_spawn_noloop = true;
    }
    
    if (image_index >= (image_number - 1))
        pellet_spawn_noloop = false;
}
