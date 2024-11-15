function cutscene_npc_direction(argument0, argument1)
{
    if (instance_exists(argument0))
    {
        with (argument0)
        {
            npc_direction = argument1;
            
            with (other)
                cutscene_advance();
            
            return true;
        }
    }
    
    return false;
}
