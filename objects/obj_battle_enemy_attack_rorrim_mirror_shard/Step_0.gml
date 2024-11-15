if (instance_exists(obj_heart_battle_fighting_parent))
{
    x += hsp;
    vsp += grav;
    
    if (vsp > terminal_velocity)
        vsp = terminal_velocity;
    
    y += vsp;
    
    if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any))
        can_vanish = true;
    
    if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && can_vanish == true)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.1;
            
            if (image_alpha < 0)
                image_alpha = 0;
            
            if (image_alpha == 0)
                instance_destroy();
        }
    }
}
