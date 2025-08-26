function cutscene_player_interact(arg0)
{
    if (instance_exists(arg0))
    {
        with (arg0)
        {
            if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
            {
                with (other)
                    cutscene_advance();
                
                return true;
            }
        }
    }
    
    return false;
}
