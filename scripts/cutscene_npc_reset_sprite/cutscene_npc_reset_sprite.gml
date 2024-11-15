function cutscene_npc_reset_sprite()
{
    with (argument[0])
    {
        if (action_sprite == true)
        {
            action_sprite = false;
            npc_direction = argument[1];
            image_index = 0;
            
            switch (npc_direction)
            {
                case "right":
                    sprite_index = right_sprite_idle;
                    break;
                
                case "up":
                    sprite_index = up_sprite_idle;
                    break;
                
                case "left":
                    sprite_index = left_sprite_idle;
                    break;
                
                case "down":
                    sprite_index = down_sprite_idle;
                    break;
            }
        }
    }
    
    cutscene_advance();
    return true;
}
