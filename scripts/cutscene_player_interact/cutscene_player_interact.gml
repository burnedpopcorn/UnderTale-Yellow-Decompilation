function cutscene_player_interact(argument0)
{
    if (instance_exists(argument0))
    {
        with (argument0)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                with (other)
                    cutscene_advance();
                
                return true;
            }
        }
    }
    
    return false;
}
