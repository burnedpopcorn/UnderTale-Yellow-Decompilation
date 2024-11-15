if (instance_exists(obj_martlet_follower))
{
    if (obj_martlet_follower.x <= 308)
        overlay_draw_enabled_follower = true;
    else
        overlay_draw_enabled_follower = false;
    
    if (overlay_draw_enabled_follower == true)
    {
        if (overlay_draw_alpha_follower < 1)
            overlay_draw_alpha_follower += 0.05;
    }
    else if (overlay_draw_alpha_follower > 0)
    {
        overlay_draw_alpha_follower -= 0.05;
    }
    
    depth = obj_martlet_follower.depth - 5;
}
