function scr_actor_into_follower(arg0, arg1)
{
    if (!instance_exists(arg0))
        return false;
    
    if (arg1 == -4)
        return false;
    
    instance_create(arg0.x, arg0.y, arg1);
    arg1.x = arg0.x;
    arg1.y = arg0.y;
    
    with (arg0)
    {
        switch (npc_direction)
        {
            case "up":
                arg1.sprite_index = arg1.up_sprite_idle;
                break;
            
            case "down":
                arg1.sprite_index = arg1.down_sprite_idle;
                break;
            
            case "left":
                arg1.sprite_index = arg1.left_sprite_idle;
                break;
            
            case "right":
                arg1.sprite_index = arg1.right_sprite_idle;
                break;
        }
    }
    
    instance_destroy(arg0);
}
