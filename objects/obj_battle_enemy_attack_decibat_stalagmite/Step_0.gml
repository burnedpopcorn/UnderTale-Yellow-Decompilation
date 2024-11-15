if (instance_exists(obj_heart_battle_fighting_parent))
{
    if (image_alpha < 1 && can_move == false)
    {
        image_alpha += 0.1;
        
        if (image_alpha > 1)
            image_alpha = 1;
        
        if (image_alpha == 1)
            can_move = true;
    }
    
    if (can_move == true)
    {
        x += hsp;
        vsp += grav;
        
        if (vsp > terminal_velocity)
            vsp = terminal_velocity;
        
        y += vsp;
        
        if (bbox_top > __view_get(e__VW.HView, 0))
            instance_destroy();
    }
}
